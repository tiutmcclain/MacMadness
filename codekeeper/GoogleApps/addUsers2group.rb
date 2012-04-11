#!/usr/bin/ruby
require 'gappsprovisioning/provisioningapi'
include GAppsProvisioning
puts "What is your email address?"
adminuser = gets
puts "What is your password?"
password  = gets
puts "What is your group shortname?"
sname = gets
puts "Who is the person you want to add to the group?"
peeps = gets
adminuser = adminuser.chomp
password = password.chomp
sname = sname.chomp
peeps = peeps.chomp

puts "Going to try " + adminuser + " with password " + password + " to update Group " + sname + " with user " + peeps

myapps = ProvisioningApi.new(adminuser,password)
begin
    new_member = myapps.add_member_to_group("#{peeps}","#{sname}")
rescue GDataError => e
    puts "errorcode = " + e.code, "input : " + e.input, "reason : " + e.reason
end
