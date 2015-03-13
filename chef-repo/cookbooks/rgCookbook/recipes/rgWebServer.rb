#
# Cookbook Name:: rgCookbook
# Recipe:: rgWebServer
#
# Copyright 2015, Ricardo Gonzalez
#
# All rights reserved - Do Not Redistribute
#
httpdOrApache2 = node['platform'] == "centos" ? 'httpd' : 'apache2'

package httpdOrApache2

service httpdOrApache2 do
  action [:start, :enable]
end

template node['webserver']['indexUrl'] do
  owner node['template']['owner']
  group node['template']['group']
  mode node['template']['mode']
end