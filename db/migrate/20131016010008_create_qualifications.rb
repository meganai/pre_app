class CreateQualifications < ActiveRecord::Migration
  def change
    create_table :qualifications do |t|
      t.string :name
      t.string :grade
      t.string :details

      t.timestamps
    end
  end
end
