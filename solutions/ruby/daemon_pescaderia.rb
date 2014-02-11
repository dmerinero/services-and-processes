#!/usr/bin/env ruby
# 

	require 'thread'
	puts 'I am running.'
	clientes = [ 'elena','ana','javier','gregorio','vicente','paz']

	list = []
	posicion = 0
		Thread.new do puts "otro"
		sleep 5
		puts "yo wel primer hilo ya termino, ahora el siguiente viene"
 end
		h=Thread.new do
		sleep 7
		g=File.open("#{Dir.pwd}/texto", "w")
		puts "hhhhhh"
		#while posicion < 15
			puts"leches"			
			posicion += 1
			list[posicion] = rand(clientes.size)
			g.puts 'hey! list[posicion]'
			 g.flush
		#endi
		
	end
h.join
	puts 'I just finish'
