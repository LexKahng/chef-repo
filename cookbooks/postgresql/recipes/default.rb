#
# Cookbook:: postgresql
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

package 'postgre-server' do
	notifies :run, 'execute[postgresql-init]'
end

execute 'postresql-init' do
	command 'postgresql-setup initdb'
	action :nothing
end

service '[pstgresql' do
	action [:enable, :start]
end
