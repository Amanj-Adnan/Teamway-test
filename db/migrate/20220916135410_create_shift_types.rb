class CreateShiftTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :shift_types do |t|
      t.string :"type_name"
      t.string :"form_to"
      t.timestamps
    end
  end
end
