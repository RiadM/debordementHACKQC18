class CreateSurverses < ActiveRecord::Migration[5.1]
  def change
    create_table :surverses do |t|
      t.integer :num
      t.string :siteNo
      t.string :nom
      t.string :secteur
      t.string :region
      t.float :lon
      t.float :lat

      t.timestamps
    end
  end
end
