class Phone

  @@all_phone_numbers = []

  define_method(:initialize) do |phone_number|
    @phone_number = phone_number
  end

  define_method(:phone_number) do
    @phone_number
  end

  define_singleton_method(:all) do
    @@all_phone_numbers
  end

  define_method(:save) do
    @@all_phone_numbers.push(self)
  end

  define_singleton_method(:clear) do
    @@all_phone_numbers = []
  end

end
