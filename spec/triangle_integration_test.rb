require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the triangle path', {:type => :feature}) do
  it('taking a user entry and returning what type (if any) triangle it is') do
    visit('/')
    fill_in('side_a', :with => '3')
    fill_in('side_b', :with => '3')
    fill_in('side_c', :with => '3')
    click_button('Submit')
    expect(page).to have_content('Equilateral')
  end
end
