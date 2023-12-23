class AddCreatorAnAttendeeToEvents < ActiveRecord::Migration[7.1]
  def change
    add_reference :events, :creator, foreign_key: { to_table: :users }
    add_reference :events, :attendee, foreign_key: { to_table: :users }
  end
end
