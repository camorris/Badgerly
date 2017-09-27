class AddUserToBadges < ActiveRecord::Migration[5.1]
  def change
    add_reference :badges, :user, foreign_key: true
  end
end
