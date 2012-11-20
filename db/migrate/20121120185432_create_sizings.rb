class CreateSizings < ActiveRecord::Migration
  def change
    create_table :sizings do |t|
      t.string :brand
      t.integer :sizing
      t.float :bust
      t.float :waist
      t.float :hips

      t.timestamps
    end
  end
end
