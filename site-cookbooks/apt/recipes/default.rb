#
# Cookbook Name:: apt
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
execute "apt" do
  command "apt-get update"
  ignore_failure true
end
