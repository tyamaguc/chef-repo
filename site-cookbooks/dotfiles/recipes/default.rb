#
# Cookbook Name:: dotfiles
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
git "/home/vagrant/.dotfiles" do
  user "vagrant"
  group "vagrant"
  repository "git://github.com/tyamaguc/dotfiles.git"
  reference "master"
  action :checkout
end

bash "setup" do
  user "vagrant"
  group "vagrant"
  cwd "/home/vagrant"
  environment "HOME" => "/home/vagrant"
  code <<-EOC
    cd /home/vagrant/.dotfiles
    chmod 755 setup.sh
    ./setup.sh
  EOC
end
