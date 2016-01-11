#
# Cookbook Name:: mcorpolo_test
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe "starter"

name "base"
description "Base role applied to all nodes"
override_attributes(
  "chef_client" => {
    "init_style" => "init",
    "server_url" => "https://api.opscode.com/organizations/mcorpolo",
    "validation_client_name" => "mcorpolo-validator"
  }
)
run_list(
  "recipe[chef-client::delete_validation]",
  "recipe[chef-client::config]",
  "recipe[chef-client::service]"
)
