#
# Cookbook Name:: rgLoadBalancer
# Recipe:: default
#
# Copyright 2015, Ricardo Gonzalez
#
# All rights reserved - Do Not Redistribute
#
include_recipe 'nginx'

servers = search(:node, "role:rgNodeToBalance")

template "#{node['nginx']['source']['conf_path']}" do
	owner node['template']['owner']
  	group node['template']['group']
  	mode node['template']['mode']
	variables(:servers => servers)
	notifies :reload, 'service[nginx]'
end