class AddColumnsToFlight < ActiveRecord::Migration[7.0]
  def change
    add_column :flights, :flight_date, :date
    add_column :flights, :flight_time, :time
  end
end
