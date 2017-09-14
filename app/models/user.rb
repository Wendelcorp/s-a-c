class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable, :omniauth_providers => [:stripe_connect]

  has_many :campaigns

  def can_receive_payments?
    uid? &&  provider? && access_code? && publishable_key?
  end
end
