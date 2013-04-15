Rails.application.config.middleware.use OmniAuth::Builder do
  provider :developer unless Rails.env.production?
  provider :facebook, '523323887714432', '95694a15a19d8839819823430db27809' #Facebook app ID and secret
end
