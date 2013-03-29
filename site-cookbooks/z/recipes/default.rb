#
# Cookbook Name:: z
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
git "/home/vagrant/z" do
  user "vagrant"
  group "vagrant"
  repository node[:z][:git_repository]
  reference node[:z][:git_revision]
  action :checkout
end
