require('rspec')
require('contact')


describe(Contact) do
  before() do
    Contact.clear()
  end


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

  describe('.all') do
    it("is empty at first") do
      expect(Contact.all()).to(eq([]))
    end
  end

  describe('#save') do
    it("saves a contact to the array of saved contacts") do
      test_contact = Contact.new("Joe", "Shmoe", "Garbage Man", "Shmoe's Garbage")
      test_contact.save()
      expect(Contact.all()).to(eq([test_contact]))
    end
  end

  describe('.clear') do
    it("empties out all of the saved contacts") do
      Contact.new("Joe", "Shmoe", "Garbage Man", "Shmoe's Garbage")
      Contact.clear()
      expect(Contact.all()).to(eq([]))
    end
  end

  describe("#id") do
    it("returns the id of the contact") do
      test_contact = Contact.new("Joe", "Shmoe", "Garbage Man", "Shmoe's Garbage")
      test_contact.save()
      expect(test_contact.id()).to(eq(1))
    end
  end

  describe(".find") do
    it("returns a contact by their id number") do
      test_contact = Contact.new("Joe", "Shmoe", "Garbage Man", "Shmoe's Garbage")
      test_contact.save()
      test_contact2 = Contact.new("Don", "John", "Plumber", "John's Johns")
      test_contact2.save()
      expect(Contact.find(test_contact.id())).to(eq(test_contact))
    end
  end


end
