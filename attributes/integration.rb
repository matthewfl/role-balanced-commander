include_attribute 'role-balanced-commander'
return unless (node.app_environment?('integration') or node.app_environment?('dev'))

default['rundeck']['proxy']['hostname'] = 'rundeck-integration.vandelay.io'
default['rundeck']['proxy']['port'] = 443
default['rundeck']['proxy']['scheme'] = 'https'
default['rundeck']['proxy']['default'] = true

default['balanced-rundeck']['app_environment'] = 'integration'
override['postgres']['archiver'] = 'db-integration-prod-mppbhl-s01.us-west-1.vandelay.io'
