require 'pry'

class User
	attr_accessor :email, :name
	@@users_list = []


	def initialize(email_to_save)
		if check_email(email_to_save)
	    @email = email_to_save
	    @@users_list << self
	else end 
	end 

	def self.all
		return @@users_list
	end

	def self.find_by_email(email_to_find)
		 @@users_list.at(@@users_list.map(&:email).index(email_to_find))
	end 

	def check_email(email_to_save)
		!email_to_save.empty?
	end

binding.pry

end