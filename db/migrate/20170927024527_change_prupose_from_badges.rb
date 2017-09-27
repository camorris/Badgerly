class ChangePruposeFromBadges < ActiveRecord::Migration[5.1]
  def change
    rename_column :badges, :prupose, :purpose
  end
end
