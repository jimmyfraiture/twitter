class User < ActiveRecord::Base
	has_many :tweets, dependent: :destroy
	has_many :list_distributions
	has_many :lists, through: :list_distributions

	#through
end
