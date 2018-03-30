class ChangeDataTypeForBirthday < ActiveRecord::Migration[5.1]
  def up
    change_table :users do |t|
      t.change :birthday, :string
    end
  end
 
  def down
    change_table :users do |t|
      t.change :birthday, :date
    end
  end
end