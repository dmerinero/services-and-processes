#!/usr/bin/env ruby
# 

	%x{ls no_such_directory}

	require 'open3'
	Open3.popen3('ls -l no_such_directory') { |stdin, stdout, stderr| stderr.read }
