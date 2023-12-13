require "rails_helper"

RSpec.describe "Movies" do
  before :each do
    test_data 
  end

  it "A user's show page has button to discover movies, links to an index of all movies" do
    visit "/login"

    fill_in :email, with: "Bungie123@gmail.com"
    fill_in :password, with: "Hello123!"

    click_on "Log In"
    visit "/users/#{@user1.id}"

    click_button "Discover Movies"
    expect(current_path).to eq("/users/#{@user1.id}/discover")
  end

  it "A user's show page has button to discover movies, links to an index of all movies" do
    visit "/users/#{@user1.id}/discover"

    expect(page).to have_content("Viewing Party Lite")
    expect(page).to have_content("Discover Movies")
    expect(page).to have_button("Find Top Rated Movies")
    expect(page).to have_link("Home")
    expect(page).to have_button("Find Movies")
    expect(page).to have_field(:movie_title)
  end

  # it "A user's show page has button to discover movies, links to an index of all movies" do
  #   visit "/users/#{@user1.id}/discover"

  # end
end