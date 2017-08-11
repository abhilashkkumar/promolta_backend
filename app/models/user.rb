require 'bcrypt'
class User < ActiveRecord::Base
  include BCrypt

  has_many :emails
  
  before_create :generate_access_token
  before_update :generate_access_token, :generate_perishable_token

  validates_presence_of :email 
  validates_uniqueness_of :email

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end

  def authenticate(password)
    self.password==password
  end

  protected

  def generate_access_token
    begin
      self.access_token = SecureRandom.hex
    end while self.class.exists?(access_token: access_token)
  end

  def generate_perishable_token
    begin
      self.perishable_token = SecureRandom.hex
    end while self.class.exists?(perishable_token: perishable_token)
  end


end
