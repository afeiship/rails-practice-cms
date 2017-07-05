class CreateAdminTags < ActiveRecord::Migration[5.0]
  def change
    create_table :admin_tags do |t|
      t.string :name
      t.string :content
      t.string :description
      t.integer :post_id

      t.timestamps
    end
  end
end
