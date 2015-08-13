class Phone

  define_method(:initialize) do |phone_number|
    @phone_number = phone_number
  end

  define_method(:phone_number) do
    @phone_number
  end

end
