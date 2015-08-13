class Mailing_Address

  @@all_mailing_addresses = []

  define_method(:initialize) do |street_address, city, state, zip_code|
    @street_address = street_address
    @city = city
    @state = state
    @zip_code = zip_code
  end

  define_method(:street_address) do
    @street_address
  end

  define_method(:city) do
    @city
  end

  define_method(:state) do
    @state
  end

  define_method(:zip_code) do
    @zip_code
  end

  define_singleton_method(:all) do
    @@all_mailing_addresses
  end

  define_method(:save) do
    @@all_mailing_addresses.push(self)
  end

  define_singleton_method(:clear) do
    @@all_mailing_addresses = []
  end

end
