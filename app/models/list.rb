class List < ActiveRecord::Base
	has_many :list_distributions
	has_many :users, through: :list_distributions
end
