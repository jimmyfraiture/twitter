class CreateListDistributions < ActiveRecord::Migration
  def change
    create_table :list_distributions do |t|
    	t.belongs_to :user
    	t.belongs_to :list
      t.integer :user_id 
      t.integer :list_id 

      t.timestamps
    end
  end
end
