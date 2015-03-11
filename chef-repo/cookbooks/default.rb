include_recipe 'tomcat'

directory "#{node['tomcat']['webapp_dir']}/ROOT"

service 'tomcat7' do
  supports status: true, restart: true
  action [:enable, :start]
end

file "#{node['tomcat']['webapp_dir']}/ROOT/index.html" do
  action :create
  owner 'root'
  group 'root'
  mode '0644'
  content 'Hello from tomcat :)'
  notifies :restart, 'service[tomcat7]'
end