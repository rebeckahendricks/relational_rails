class CreateVacationHomes < ActiveRecord::Migration[5.2]
  def change
    create_table :vacation_homes do |t|
      t.string :listing_name
      t.string :city
      t.string :state
      t.string :country
    end
  end
end
