class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :timeoutable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :mobilable, :token_authenticatable, :confirmable, :lockable

  # Setup accessible (or protected) attributes for your model
  validates_uniqueness_of :email, :case_sensitive => false
end

