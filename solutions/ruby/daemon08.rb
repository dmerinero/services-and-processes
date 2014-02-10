#!/usr/bin/env ruby
# 

	%x{whoami}
	puts %x{ls -a empty_dir}

	IO.popen('tail -3', 'r+') do |pipe|
	  1.upto(100) { |i| pipe >> "This is line #{i}.\n" }
	  pipe.close_write
	  puts pipe.read
	end
