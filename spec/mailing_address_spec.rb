require('rspec')
require('mailing_address')

describe(Mailing_Address) do

  describe('#street_address') do
    it("returns the street address of the mailing address") do
      test_mailing_address = Mailing_Address.new("123 Real Street", "Portland", "Oregon", 97201)
      expect(test_mailing_address.street_address()).to(eq("123 Real Street"))
    end
  end

  describe('#city') do
    it("returns the city of the mailing address") do
      test_mailing_address = Mailing_Address.new("123 Real Street", "Portland", "Oregon", 97201)
      expect(test_mailing_address.city()).to(eq("Portland"))
    end
  end

  describe('#state') do
    it("returns the state of the mailing address") do
      test_mailing_address = Mailing_Address.new("123 Real Street", "Portland", "Oregon", 97201)
      expect(test_mailing_address.state()).to(eq("Oregon"))
    end
  end

  describe('#zip_code') do
    it("returns the zip code of the mailing address") do
      test_mailing_address = Mailing_Address.new("123 Real Street", "Portland", "Oregon", 97201)
      expect(test_mailing_address.zip_code()).to(eq(97201))
    end
  end

end
