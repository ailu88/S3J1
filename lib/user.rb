require 'pry'

class User
	attr_accessor :email, :name
	@@users = []


	def initialize(email_to_save)
	    @email = email_to_save
	    @@users << self
	end 

	def self.all
		return @@users
	end

	def self.find_by_email(email)
		
	end 

end
