module Hyperspacelab
  class License < Grape::API
    desc 'Returns license status'
    # http://localhost:3000/api/check?slug=jImxw&serial=381762DF-77564401-9631035E-82768CEE
    get :check do
      { message: Gumroad.new().check(params[:slug], params[:serial]) }
    end

   	desc 'Serial number registration'
   	get :register do
   	  { message: Gumroad.new().register(params[:slug], params[:serial], params[:name], params[:email]) }
   	end
  end
end