#
# Cookbook Name:: locale
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
package "locales"

execute "update locale" do
  command "update-locale LANG=#{node[:locale][:lang]}"
end
