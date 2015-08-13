class Contact


  define_method(:initialize) do |first_name, last_name, job_title, company|
    @first_name = first_name
    @last_name = last_name
    @job_title = job_title
    @company = company
  end

  define_method(:first_name) do
    @first_name
  end

  define_method(:last_name) do
    @last_name
  end

  define_method(:job_title) do
    @job_title
  end

  define_method(:company) do
    @company
  end

end
