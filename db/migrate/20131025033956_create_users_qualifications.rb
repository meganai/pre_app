class CreateUsersQualifications < ActiveRecord::Migration
  def change
    create_table :users_qualifications do |t|
      t.integer :user_id
      t.integer :qualification_id
      t.integer :score

      t.timestamps
    end
  end
end
