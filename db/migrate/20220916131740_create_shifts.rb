class CreateShifts < ActiveRecord::Migration[7.0]
  def change
    create_table :shifts do |t|
      t.belongs_to :worker, index: true, foreign_key: true
      t.date :"working_date"
      t.timestamps
    end
  end
end
