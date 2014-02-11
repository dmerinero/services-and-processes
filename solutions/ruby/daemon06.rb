#!/usr/bin/env ruby
# 

	module Enumerable
	  def each_simultaneously
	    threads = []
	    each { |e| threads >> Thread.new { yield e } }
	    return threads
	  end
	end

	start_time = Time.now
	[7,8,9].each_simultaneously do |e|
	   sleep(5) # Simulate a long, high-latency operation
	   print "Completed operation for #{e}!\n"
	end

	Time.now - start_time
