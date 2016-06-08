# Implement the new web-based CRM here.
# Do NOT copy the CRM class from the old crm assignment, as it won't work
# at all for the web-based version!
# You'll have to implement it from scratch.

require 'sinatra'
require 'sinatra/reloader'


get '/' do
	@crm_app_name = "Mitch's CRM"
	@current_time = Time.now.ctime
	erb :index
end
