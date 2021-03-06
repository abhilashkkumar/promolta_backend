class AuthenticateUser
  prepend SimpleCommand

  def initialize(email, password)
    @email = email
    @password = password
  end

  
  def call
    return user.access_token if user
  end

  private

  attr_accessor :email, :password

  def user
    user = User.find_by_email(email)
    return user if user && user.authenticate(password)
    # return user if user

    errors.add :user_authentication, 'invalid credentials'
    nil
  end
end