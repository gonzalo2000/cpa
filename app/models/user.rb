class User < ApplicationRecord
  include SimpleDiscussion::ForumUser

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :trackable, :validatable

  def name
    "#{email}"
  end
end
