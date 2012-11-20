class CreateSizings < ActiveRecord::Migration
  def change
    create_table :sizings do |t|
      t.string :brand
      t.string :size
      t.float :bust
      t.float :wasit
      t.float :hips

      t.timestamps
    end
  end
end
