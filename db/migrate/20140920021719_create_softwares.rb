class CreateSoftwares < ActiveRecord::Migration
  def change
    create_table :softwares do |t|
      t.string :name
      t.integer :downloadtimes
      t.string :des
      t.string :type
      t.string :pic
      t.string :mb
      t.integer :show
      t.string :company
      t.string :lang
      t.string :addition

      t.timestamps
    end
  end
end
