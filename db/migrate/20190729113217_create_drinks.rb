class CreateDrinks < ActiveRecord::Migration[5.2]
  def change
    create_table :drinks do |t|
      t.string :name, null: false
      t.string :images_path
      t.string :description
      t.string :clean
      t.string :koku
      t.string :sweet
      t.string :bitter
      t.timestamps
    end
  end
end
