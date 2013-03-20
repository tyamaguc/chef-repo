#
# Cookbook Name:: oh-my-zsh
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
include_recipe "git"
include_recipe "zsh"

git "/home/" + node[:user] + "/.oh-my-zsh" do
  repository "https://github.com/robbyrussell/oh-my-zsh.git"
  reference "master"
  user node[:user]
  action :checkout
  not_if "test -d /home/" + node[:user] + "/.oh-my-zsh"
end
