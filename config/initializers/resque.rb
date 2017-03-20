Resque.redis = 'localhost:6379'
Resque.redis.namespace = "resque:resque_timebox:#{Rails.env}" # アプリ毎に異なるnamespaceを定義しておく