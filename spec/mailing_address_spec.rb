require('rspec')
require('mailing_address')

describe(Mailing_Address) do
  before() do
    Mailing_Address.clear()
  end

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

  describe('.all') do
    it("is empty at first") do
      expect(Mailing_Address.all()).to(eq([]))
    end
  end

  describe('#save') do
    it("saves a mailing address to the array of saved mailing address") do
      test_mailing_address = Mailing_Address.new("123 Real Street", "Portland", "Oregon", 97201)
      test_mailing_address.save()
      expect(Mailing_Address.all()).to(eq([test_mailing_address]))
    end
  end

  describe('.clear') do
    it("empties out all of the mailing addresses")  do
      Mailing_Address.new("123 Real Street", "Portland", "Oregon", 97201)
      Mailing_Address.clear()
      expect(Mailing_Address.all()).to(eq([]))
    end
  end



end
