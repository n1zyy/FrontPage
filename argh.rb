#!/usr/bin/env ruby

theme = ARGV[0]
raise "No theme name!" unless theme.size > 0
files = `ls 192.168.1.13/_derived/*#{theme}*hbtn.gif`.split("\n")
Dir.chdir "192.168.1.13/_derived"

files.each do |file|
  # We have e.g. 192.168.1.13/_derived/favorite.htm_cmp_clearday010_hbtn.gif
  `wget #{file.gsub('hbtn.gif', 'hbtn_a.gif')}`
  puts "File: #{file}"
end
