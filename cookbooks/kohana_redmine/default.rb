#
# Cookbook Name:: kohana_redmine
# Recipe:: default
#

depends 'application'
depends 'application_ruby'

application "kohana_redmine" do

  path "/usr/local/www/redmine"

  owner 'app-user'
  group 'app-group'

  repository 'http://git.example.com/my-app.git'
  revision   'production'

  rails do
    database do
      host     "<host>"
      database "<dbname>"
      username "<username>"
      password "<password>"
    end
    database_master_role "redmine_database_master"
  end
  
  memcached do
    role "memcached_master"
    options do
      ttl 1800
      memory 256
    end
  end

  passenger_apache2 do
  end

end