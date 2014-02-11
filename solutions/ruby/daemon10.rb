#!/usr/bin/env ruby
# 

	require 'rubygems'
	require 'net/ssh'
	def run_remotely(command, host, args)
	  Net::SSH.start(host, args) do |session|
	    session.process.popen3(command) do |stdin, stdout, stderr|
	      yield stdin, stdout, stderr
	    end
	  end
	end

	run_remotely('ls -l /home/leonardr/dir', 'example.com', :username=>'leonardr',
	             :password => 'mypass') { |i, o, e| puts o.read }
