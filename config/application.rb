require File.expand_path('../boot', __FILE__)


require 'csv'
require 'iconv'
require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Orayan
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de

    # set active job adapter as  sidekiq
    # config.active_job.queue_adapter = :sidekiq
    # Do not swallow errors in after_commit/after_rollback callbacks.
    config.active_record.raise_in_transactional_callbacks = true

    # Detect mobile device using mobvious gem
    config.middleware.use Mobvious::Manager
    
    config.middleware.insert_before 0, "Rack::Cors" do
    allow do
    origins '*'
    resource '*', :headers => :any, :methods => [:get, :put, :delete, :post, :options]
  end
end


    config.textris_delivery_method = :sms_gupshup


    config.generators do |g|
      g.test_framework  :rspec, :fixture => true
      g.fixture_replacement :factory_girl , :dir=>"spec/factories"
    end
    config.filter_parameters += [:password,
                                  :password_confirmation,
                                  :number,
                                  :cc_number,
                                  :cc_type,
                                  :brand,
                                  :card_number,
                                  :verification_value]
    # access any Settings here
    config.after_initialize do
      Paperclip::Attachment.default_options[:url] = ':s3_domain_url'
      #Paperclip::Attachment.default_options[:path] = '/:class/:attachment/:id_partition/:style/:filename'

      Paperclip::Attachment.default_options[:s3_protocol]     = Settings.paperclip.s3_protocol
      Paperclip::Attachment.default_options[:s3_credentials]  = Settings.paperclip.s3_credentials.to_hash
      Paperclip::Attachment.default_options[:bucket]          = Settings.paperclip.bucket
      Paperclip::Attachment.default_options[:hash_secret]     = Settings.paperclip.hash_secret

    end
    
  end
end
