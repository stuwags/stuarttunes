CarrierWave.configure do |config| 
  config.fog_credentials = { 
    :provider               => 'AWS', 
    :aws_access_key_id      => 'TODO: Replace with env vars', 
    :aws_secret_access_key  => 'TODO: Replace with env vars', 
  } 
  config.fog_directory  = 'stuart_tunes' 
  config.fog_public     = false 
end 