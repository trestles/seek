class ServicesController < ApplicationController

 def instagram
   puts "within instagram"
   auth_hash = request.env['omniauth.auth']
   User.create! ig_name:"My fuckin name!"
   render :text => auth_hash.inspect
 end
end
