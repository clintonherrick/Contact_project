class Mailing_Address


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

end
