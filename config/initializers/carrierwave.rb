 CarrierWave.configure do |config|
    config.fog_credentials = {
      provider: 'AWS',
      aws_access_key_id: ENV["AWS_ACCESS_KEY_CHAT_RAILS"],
      aws_secret_access_key: ENV["AWS_SECRET_ACCESS_KET_CHAT_RAILS"],
      region: 'ap-northeast-1'
    }

    config.fog_directory  = 'chat-rails'
    config.cache_storage = :fog
  end
