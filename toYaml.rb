#!/usr/bin/env ruby
require 'fileutils'

FileUtils.rm_rf("YAML/.", secure: true)
output = %x[make unpack]
if $? != 0
  puts output
  puts "Something went wrong - please fix it (enter to continue)"
  gets
end
