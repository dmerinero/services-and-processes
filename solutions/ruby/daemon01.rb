#!/usr/bin/env ruby
# 

	require 'tempfile'
	puts 'About to daemonize.'
	log = Tempfile.new('daemon.log')
	loop do
	  log.puts "I'm a daemon, doin' daemon things."
	  log.flush
	  sleep 5
	end
