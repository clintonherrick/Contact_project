require('rspec')
require('phone')


describe(Phone) do
  before() do
    Phone.clear()
  end

  describe('#phone_number') do
    it("returns the phone number of the contact") do
      test_phone = Phone.new(503-555-5555)
      expect(test_phone.phone_number()).to(eq(503-555-5555))
    end
  end

  describe('.all') do
    it("is empty at first") do
      expect(Phone.all()).to(eq([]))
    end
  end

  describe('#save') do
    it("saves a phone number to the array of saved phone numbers") do
      test_phone = Phone.new(503-555-5555)
      test_phone.save()
      expect(Phone.all()).to(eq([test_phone]))
    end
  end

  describe('.clear') do
    it("empties out all of the phone numbers") do
      Phone.new(503-555-5555)
      Phone.clear()
      expect(Phone.all()).to(eq([]))
    end
  end







end
