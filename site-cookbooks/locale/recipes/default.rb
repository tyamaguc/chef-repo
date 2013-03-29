#
# Cookbook Name:: locale
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
package "locales"

bash "append_locale" do
  user "root"
  code <<-EOH
  echo #{node[:locale][:encode]} >> /etc/locale.gen
  EOH
end
 
execute "locale_gen" do
  command "locale-gen"
end

execute "update locale" do
  command "update-locale LANG=#{node[:locale][:lang]}"
end
