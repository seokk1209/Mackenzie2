class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.string :name
      t.text :body
      t.string :post_id
      t.string :references, index: true

      t.timestamps
    end
  end
end
