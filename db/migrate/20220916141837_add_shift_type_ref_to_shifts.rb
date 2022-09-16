class AddShiftTypeRefToShifts < ActiveRecord::Migration[7.0]
  def change
    add_reference :shifts , :shift_type ,index: true,foreign_key: true
  end
end
