IG_SECRETS = {
  'development' => {id: '9f652d32593f49ca98553de3c255a67f', key: '9ab70171fb674521aa57dfbb72d562d5'},
  'production' =>  {id: '4658fa17d45244c88dd13c73949a57d7', key: 'ae6cfe5d13544eada4dece2ec40ac5dc'}
}

Rails.application.config.middleware.use OmniAuth::Builder do
  configure do |config|
    config.path_prefix = '/arc/auth'
  end
  provider :instagram, IG_SECRETS[Rails.env][:id], IG_SECRETS[Rails.env][:key]
end
