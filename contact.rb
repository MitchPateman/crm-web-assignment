# Copy your entire Contact class from the old crm assignment here.
# Then, run the following at the command line:
#
#   ruby test/contact_test.rb
#
# If your implementation of the Contact class is 'right', then you should
# see that all tests pass!

require 'active_record'
require 'mini_record'

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'crm-web.sqlite3')

class Contact < ActiveRecord::Base

		field :first_name, as: :string
		field :last_name,  as: :string
		field :email,      as: :string
		field :note,       as: :text

	def full_name
		"#{first_name} #{last_name}"
	end

end #END OF CONTACT CLASS

Contact.auto_upgrade!











# attr_reader :id
# attr_accessor :first_name, :last_name, :email, :note

# @@contacts = []
# @@id = 1
	# This method should initialize the contact's attributes
	# def initialize(first_name, last_name, email, note)
	# 	@first_name = first_name
	# 	@last_name = last_name
	# 	@email = email
	#   @ note = note
	# 	@id = @@id
	# 	@@id += 1
	# end

	# This method should call the initializer,
	# store the newly created contact, and then return it


	# def self.create(first_name, last_name, email, note = "")
	# 	new_contact = Contact.new(first_name, last_name, email, note)
	# 	@@contacts << new_contact
	# 	return new_contact
	# end

	# This method should return all of the existing contacts


	# def self.all
	# 	@@contacts
	# end

##########Trying for display_contacts
	# def self.all_type(find_attribute)
	# 	@@contacts each {|x| return contacts if @@contacts[x][find_attribute] == true}
	# end

	# This method should accept an id as an argument
	# and return the contact who has that id


	# def self.find(id)
	# 		@@contacts.find { |contact| contact.id == id }
	# end

	# def self.find(find_id)
	# 	 @@contacts.each do |contact|
	# 		 if contact.id == find_id
	# 					return contact
	# 		 end
	# 	 end
	# end

	# This method should allow you to specify
	# 1. which of the contact's attributes you want to update
	# 2. the new value for that attribute
	# and then make the appropriate change to the contact
	# def update(attribute, new_value)
	# 		case attribute
	# 		when "first_name"
	# 			@first_name = new_value
	# 		when "last_name"
	# 			@last_name = new_value
	# 		when "email"
	# 			@email = new_value
	# 		when "note"
	# 			@ note = new_value
	# 		end
	# end


	# This method should work similarly to the find method above
	# but it should allow you to search for a contact using attributes other than id
	# by specifying both the name of the attribute and the value
	# eg. searching for 'first_name', 'Betty' should return the first contact named Betty
	# def self.find_by(find_attribute, value)
	# 	contact_array = []
	#
	# 	case find_attribute
	# 		when "first_name"
	# 			# puts "Which first name are you looking for?"
	# 			# find_first = gets.chomp.to_s
	# 			@@contacts.each do |person|
	# 				if person.first_name == value
	# 					contact_array << person
	# 				end
	# 			end
	# 		when "last_name"
	# 			# puts "Which last name?"
	# 			# find_last = gets.chomp.to_s
	# 			@@contacts.each do |person|
	# 				if person.last_name == value
	# 					contact_array << person
	# 				end
	# 			end
	# 		when "email"
	# 			# puts "Which Email?"
	# 			# find_email = gets.chomp.to_s
	# 			@@contacts.each do |person|
	# 				if person.email == value
	# 					contact_array << person
	# 				end
	# 			end
	# 		when "note"
	# 			# puts "Which Note?"
	# 			# find_note = gets.chomp.to_s
	# 			@@contacts.each do |person|
	# 				if person.note == value
	# 					contact_array << person
	# 				end
	# 			end
	# 		else
	# 			puts "ERROR ERROR ERROR"
	# 	end
	# 	return contact_array[0]
	# end
	#

	# This method should delete all of the contacts
	# def self.delete_all
	# 	@@contacts.clear
	# end



	# This method should delete the contact
	# HINT: Check the Array class docs for built-in methods that might be useful here


	# def delete
	# 	#@@contacts.delete(self)
	# 	@@contacts.delete_if { |contact| contact.id == self.id }
	# end

	# Feel free to add other methods here, if you need them.
