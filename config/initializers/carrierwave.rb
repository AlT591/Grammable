# config/initializers/carrierwave.rb
CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'                        # required
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     ENV.get("AWS_ACCESS_KEY"),        # required
    aws_secret_access_key: ENV.get("AWS_SECRET_KEY"),        # required
  }
  config.fog_directory  = ENV.get("AWS_BUCKET")              # required
end



