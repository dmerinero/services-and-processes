#!/usr/bin/env ruby
# 

	require 'thread'
	puts 'I am running.'

	clientes = [ 'elena','ana','javier','gregorio','vicente','paz']

	list = []
	posicion = 0
	h=Thread.new do
		while posicion < 15			
			posicion += 1
			list[posicion] = rand(clientes.size)
			#puts "wolololololololololololololololo"
			#puts "* %s tendrá el número %i", clientes[list[posicion]], posicion
		end
	end
	h.join
	1.upto(list.size)  do |i|
	comodin = list[i]
	#for (i = 0; i < list.size; i++)
		if (comodin >= 1)
			if (comodin < list.size)
				time = rand(1)
				sleep time
				#puts "Que te pongo" clientes[list[i]]
			else 
				puts "Algo ha ido mal"
			end
		else
			puts "Algo ha ido mal"
	end
end
	puts 'I just finish'
