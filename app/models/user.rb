class User < ActiveRecord::Base
  has_secure_password
  validates :email, presence: true, uniqueness: true

  before_save :set_handle

  private
  def set_handle
    self.handle ||= email
  end
end
