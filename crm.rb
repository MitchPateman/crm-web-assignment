# Implement the new web-based CRM here.
# Do NOT copy the CRM class from the old crm assignment, as it won't work
# at all for the web-based version!
# You'll have to implement it from scratch.

require_relative 'contact'
require 'sinatra'
require 'sinatra/reloader'

# Temporary fake data so that we always find contact with id 1.
Contact.create('Johnny', 'Bravo', 'johnny@bitmakerlabs.com', 'Rockstar')


get '/' do
	@current_time = Time.now.ctime
	erb :index
end

get '/contacts' do
	erb :contacts
end

get '/contacts/new' do
	erb :new_contact
end

post '/contacts' do
	Contact.create(params[:first_name], params[:last_name], params[:email], params[:note])
	redirect to('/contacts')
end

get '/contacts/:id' do
	@contact = Contact.find(params[:id].to_i)
	if @contact
		erb :show_contact
	else
		raise Sinatra::NotFound
	end
end
