require 'rails_helper'

RSpec.feature "QuickCheckouts", type: :feature do
  fixtures :all
  it "can add an item to the cart from the home page, and proceed to checkout" do
    visit "/"
    click_link "Bring me one!"
    # now on the order page
    fill_in "Full name", with: "Russell Osborne"
    # filling in all the fields on the page

  end
end
