class CreateBeta < ActiveRecord::Migration[5.2]
  def change
    create_table :beta do |t|
      t.text :name
      t.text :phone
      t.timestamp :age

      t.timestamps
    end
  end
end
