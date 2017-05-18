# You can export this fields to bash env file:

ENV['ADMIN_USER'] = "afei"
ENV['ADMIN_PASSWORD'] = "test"

## i18n config:
Rails.application.config.i18n.available_locales = [:en, :'zh-CN']
Rails.application.config.i18n.default_locale = (ENV['LOCALE'] || 'zh-CN').to_sym

## timezone:
Rails.application.config.time_zone = 'Beijing'

## password
Rails.application.config.action_controller.action_on_unpermitted_parameters = :log
Rails.application.config.filter_parameters += [:password]

## generators:
Rails.application.config.generators do |generator|
  generator.test_framework false
  generator.helper false
  generator.assets false
end
