#
# Cookbook Name:: kohana_redmine
# Recipe:: default
#

depends 'application'
depends 'application_ruby'

application "kohana_docs" do

  path "/usr/local/www/docs"
  owner node[:apache][:user]
  group node[:apache][:user]
  repository "..."
  deploy_key "..."
  revision "4_0_7"
  packages ["php-soap"]

  php do
    database_master_role "database_master"
    local_settings_file "config.php"
  end

  mod_php_apache2

end