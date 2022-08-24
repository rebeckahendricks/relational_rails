require 'rails_helper'
# As a visitor
# When I visit '/parents/:id'
# Then I see the parent with that id including the parent's attributes:
# - data from each column that is on the parent table

RSpec.describe 'the vacation_homes show page' do
  describe 'As a visitor' do
    describe 'when I visit "/vacation_homes/:id"' do
      describe 'I see the vacation_home with that id' do
        it 'displays the vacation home listing name' do
          vacation_home = VacationHome.create!(listing_name: "Gorgeous home", city: "San Jose", state: "CA", country: "USA")

          visit "/vacation_homes/#{vacation_home.id}"

          expect(page).to have_content(vacation_home.listing_name)
        end
      end

      describe 'I see all the vacation_home attributes' do
        it 'displays the vacation_home city' do
          vacation_home = VacationHome.create!(listing_name: "Gorgeous home", city: "San Jose", state: "CA", country: "USA")

          visit "/vacation_homes/#{vacation_home.id}"

          expect(page).to have_content(vacation_home.city)
        end

        it 'displays the vacation_home state' do
          vacation_home = VacationHome.create!(listing_name: "Gorgeous home", city: "San Jose", state: "CA", country: "USA")

          visit "/vacation_homes/#{vacation_home.id}"

          expect(page).to have_content(vacation_home.state)
        end

        it 'displays the vacation_home country' do
          vacation_home = VacationHome.create!(listing_name: "Gorgeous home", city: "San Jose", state: "CA", country: "USA")

          visit "/vacation_homes/#{vacation_home.id}"

          expect(page).to have_content(vacation_home.country)
        end
      end
    end
  end
end
