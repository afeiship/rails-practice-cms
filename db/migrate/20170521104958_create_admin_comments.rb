class CreateAdminComments < ActiveRecord::Migration[5.0]
  def change
    create_table :admin_comments do |t|
      t.text :content

      t.timestamps
    end
  end
end
