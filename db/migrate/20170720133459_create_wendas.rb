class CreateWendas < ActiveRecord::Migration[5.1]
  def change
    create_table :wendas do |t|
      t.string :title
      t.text :wen
      t.text :da

      t.timestamps
    end
  end
end
