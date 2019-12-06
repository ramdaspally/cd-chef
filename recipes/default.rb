#
# Cookbook:: gol-tomcat
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.
apt_package 'tomcat8' do
    action :install
end
service 'tomcat8' do
    action :start
end


remote_file '/var/lib/tomcat8/webapps' do
    source 'http://ec2-52-27-126-246.us-west-2.compute.amazonaws.com:8081/artifactory/new/gameoflife.war'
    action :create
end
service 'tomcat8' do
    action :restart
end
