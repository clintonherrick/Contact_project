require('rspec')
require('phone')


describe(Phone) do

  describe('#phone_number') do
    it("returns the phone number of the contact") do
      test_phone = Phone.new(503-555-5555)
      expect(test_phone.phone_number()).to(eq(503-555-5555))
    end
  end








end
