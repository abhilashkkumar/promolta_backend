
if Settings.uses_resque_for_background_emails && defined?(Resque)
  Orayan::Application.config.after_initialize do
    Resque.redis = $redis
    Resque.redis.namespace = 'resque:rore'
  end
end
