#!/usr/bin/env ruby
# 

	require 'thread'

	clientes = [ 'Elena','Ana','Javier','Gregorio','Vicente','Paz']

	list = []
	posicion = 0
	h=Thread.new do
		while posicion < 15			
			posicion += 1
			list[posicion] = rand(clientes.size)
			puts "* #{clientes[list[posicion]]} tendrá el número #{posicion.to_s}"
		end
	end
	h.join
	1.upto(list.size-1)  do |i|
		comodin = list[i]
		time = rand(5)
		sleep time
		puts "Que te pongo  #{clientes[list[i]]}" 
	end
