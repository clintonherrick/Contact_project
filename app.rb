require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/phone')
require('./lib/contact')

get('/') do
  erb(:index)
end

get('/contacts/new') do
   erb(:add_contact_info)
end

get('/contact_list') do
  @@all_contacts = Contact.all()
  erb(:all_contact)
end

post('/contacts/new') do
  first_name = params.fetch('first_name')
  last_name = params.fetch('last_name')
  job_title = params.fetch('job_title')
  company = params.fetch('company')
  Contact.new(first_name, last_name, job_title, company).save()
  @@all_contacts = Contact.all()
  erb(:success)
end
