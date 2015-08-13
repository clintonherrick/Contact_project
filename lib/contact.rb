class Contact

  @@all_contacts = []


  define_method(:initialize) do |first_name, last_name, job_title, company|
    @first_name = first_name
    @last_name = last_name
    @job_title = job_title
    @company = company
    @id = @@all_contacts.length().+(1)
    @info = []
  end

  define_method(:first_name) do
    @first_name
  end

  define_method(:last_name) do
    @last_name
  end

  define_method(:job_title) do
    @job_title
  end

  define_method(:company) do
    @company
  end

  define_singleton_method(:all) do
    @@all_contacts
  end

  define_method(:save) do
    @@all_contacts.push(self)
  end

  define_singleton_method(:clear) do
    @@all_contacts = []
  end

  define_method(:id) do
    @id
  end

  define_method(:info) do
    @info
  end

  define_method(:add_phone) do |phone|
    @info.push(phone)
  end

  define_method(:add_mailing_address) do |mailing_address|
    @info.push(mailing_address)
  end

  define_singleton_method(:find) do |id|
    found_contact = nil
    @@all_contacts.each() do |contact|
      if contact.id().eql?(id.to_i())
        found_contact = contact
      end
    end
    found_contact
  end

end
