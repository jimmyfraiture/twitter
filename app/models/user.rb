class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	has_many :tweets, dependent: :destroy
	has_many :list_distributions
	has_many :lists, through: :list_distributions

	#through
end
