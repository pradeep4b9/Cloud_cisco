CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',                        # required
    :aws_access_key_id      => ENV['AWS_ACCESS_KEY_ID'],                        # required
    :aws_secret_access_key  => ENV['AWS_SECRET_ACCESS_KEY'],
    :region                 => 'us-east-1',
    :public                 => 'true'
    
    }
  config.fog_directory  = 'images-paraginfotech'
  config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}
  config.storage = :fog
end
