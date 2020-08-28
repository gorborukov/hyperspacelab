class API < Grape::API
  prefix 'api'
  format :json
  mount Hyperspacelab::License
end