class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
    	t.column :rating , :integer
    	t.column :content, :string
    	t.column :user_id, :integer
    	t.column :product_id, :integer
    end
  end
end
