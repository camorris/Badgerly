class CreateBadges < ActiveRecord::Migration[5.1]
  def change
    create_table :badges do |t|
      t.string :course
      t.string :website
      t.string :date
      t.text :purpose

      t.timestamps
    end
  end
end
