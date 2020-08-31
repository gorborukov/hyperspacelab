class Gumroad
  include HTTParty

  def check(slug, serial)
    query = { 
      "product_permalink" => slug,
      "license_key" => serial
    }

    response = HTTParty.post("https://api.gumroad.com/v2/licenses/verify", query: query, format: :plain)

    case response.code
    when 200
      body = JSON.parse(response.body)
      if !body['purchase']['refunded'] || !body['purchase']['chargebacked']
      	if License.exists?(serial: serial)
      	  return "Serial number is valid and registered."
      	else
      	  return "Serial number is valid but not registered."
      	end
      else
      	if License.exists?(serial: serial)
      	  return "Serial number is registered but no longer valid."
      	else
      	  return "Serial number no longer valid."
      	end
      end
    when 404
      return "Serial number not found."
    when 500...600
      return "Network error #{response.code}. Please try again later."
    end
  end

  def register(slug, serial, name, email)
    query = { 
      "product_permalink" => slug,
      "license_key" => serial
    }

    response = HTTParty.post("https://api.gumroad.com/v2/licenses/verify", query: query, format: :plain)

    case response.code
    when 200
      body = JSON.parse(response.body)
      if !body['purchase']['refunded'] || !body['purchase']['chargebacked']
        if !License.exists?(serial: serial)
          License.create!(serial: serial, name: name, email: email, active: true)
          return "Congratulations, your plugin is registered!"
        else
          return "This serial number has already been registered."
        end
      else
        license = License.where(serial: serial).first
        license.active = false
        license.save
        return "This serial number is no longer valid."
      end
    when 404
      return "Serial number not found."
    when 500...600
      return "Network error #{response.code}. Please try again later."
    end
  end
end
