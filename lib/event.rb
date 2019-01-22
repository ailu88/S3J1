require 'pry'
require 'time'

class Event

	attr_accessor :start_date, :length, :title, :attendees

	def initialize(start_date_input, length_input, title_input, attendees_input)
	    @start_date = Time.parse(start_date_input.to_s)
	    @length = length_input.to_i
	    @title = title_input.to_s
	    @attendees = attendees_input.to_a
	end

	def postpone_24h
		@start_date = @start_date + 60*60*24
	end

	def end_date
		return @start_date + @length*60
	end

	def is_past
		Time.now > self.start_date
	end 

	def is_future
		!self.is_past
	end

	def is_soon
		(@start_date - Time.now)/60 < 30 and self.is_future
	end

	def to_s
		puts "Titre : #{@title}" 
		puts "Date de début : #{@start_date.strftime("%Y-%m-%d %H:%M")}"
		puts "Durée : #{@length} minutes"
		puts "Invités : #{@attendees.join(', ')}"
	end

binding.pry

end