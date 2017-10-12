#!/usr/bin/env ruby

%x[make clean-yaml]
output = %x[make unpack]
if $? != 0
  puts output
  puts "Something went wrong - please fix it (enter to continue)"
  gets
end
