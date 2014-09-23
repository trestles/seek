class ServicesController < ApplicationController

 def instagram
   puts "within instagram"
   auth_hash = request.env['omniauth.auth']
   render :text => auth_hash.inspect
 end
end
