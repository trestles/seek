
Rails.application.config.middleware.use OmniAuth::Builder do
  #provider :facebook, ENV['FB_APP_ID'], ENV['FB_APP_SECRET']
  #provider :facebook, FB_APP_ID, FB_APP_SECRET
  #provider :facebook, 'APP_ID', 'APP_SECRET'
  #provider :facebook, '150151361749340', 'd77b17266652c910036e0e7710c74545', {:scope => "manage_pages, email"}
  #provider :facebook, AppConfig['facebook_api_key'], AppConfig['facebook_api_secret'], {:scope => 'publish_stream, email'}           
  provider :instagram, 4658fa17d45244c88dd13c73949a57d7, ae6cfe5d13544eada4dece2ec40ac5dc
end
