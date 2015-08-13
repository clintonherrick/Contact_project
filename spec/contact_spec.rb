require('rspec')
require('contact')


describe(Contact) do


  describe('#first_name') do
    it("returns the first name of the contact") do
      test_contact = Contact.new("Joe", "Shmoe", "Garbage Man", "Shmoe's Garbage")
      expect(test_contact.first_name()).to(eq("Joe"))
    end
  end

  describe('#last_name') do
    it("returns the last name of the contact") do
      test_contact = Contact.new("Joe", "Shmoe", "Garbage Man", "Shmoe's Garbage")
      expect(test_contact.last_name()).to(eq("Shmoe"))
    end
  end

  describe('#job_title') do
    it("returns the job title of the contact") do
      test_contact = Contact.new("Joe", "Shmoe", "Garbage Man", "Shmoe's Garbage")
      expect(test_contact.job_title()).to(eq("Garbage Man"))
    end
  end

  describe('#company') do
    it("returns the company of the contact") do
      test_contact = Contact.new("Joe", "Shmoe", "Garbage Man", "Shmoe's Garbage")
      expect(test_contact.company()).to(eq("Shmoe's Garbage"))
    end
  end


end
