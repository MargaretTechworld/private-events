class RemoveForeignKeysFromEvents < ActiveRecord::Migration[7.1]
  def change
    remove_reference :events, :creator
    remove_reference :events, :attendee
  end
end
