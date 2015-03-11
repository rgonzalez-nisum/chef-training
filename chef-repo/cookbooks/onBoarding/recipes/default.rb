#
# Cookbook Name:: onBoarding
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
node.override['java']['jdk_version'] = '7'
node.override['java']['install_flavor'] = "oracle"
node.override['java']['oracle']['accept_oracle_download_terms'] = true

include_recipe "java"
include_recipe "tomcat7"
include_recipe "git"