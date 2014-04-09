default['poise-appenv']['cookbook'] = 'role-balanced-commander'

override['balanced-apt']['allow_unstable'] = node.chef_environment == 'test'

default['rundeck']['port']              = 4440
default['rundeck']['hostname']          = '127.0.0.1'

default['balanced']['jobs']['failure_recipient'] = 'cron+balanced@balancedpayments.com'
default['balanced']['jobs']['failure_notify_url'] = 'https://cron.vandelay.io'

default['precog']['jobs']['failure_recipient'] = 'cron+precog@balancedpayments.com'
default['precog']['jobs']['failure_notify_url'] = 'https://cron.vandelay.io'