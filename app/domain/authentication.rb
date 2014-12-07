class Authentication
  def username
    @username ||= ENV.fetch('BASIC_AUTH_USERNAME')
  end

  def password
    @password ||= ENV.fetch('BASIC_AUTH_PASSWORD')
  end
end
