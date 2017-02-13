# encoding: UTF-8
require 'sidekiq'

redis_server = "localhost"

Sidekiq.configure_server do |config|
  config.redis = { :url => 'redis://' + redis_server + ':6379/0', namespace: 'mynamespace_wiv_biz' }

end

Sidekiq.configure_client do |config|
  config.redis = { :url => 'redis://' + redis_server + ':6379/0', :namespace => 'mynamespace_wiv_biz' }
end

