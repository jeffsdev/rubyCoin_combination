require('capybara/rspec')
require('./app')
require('pry')

Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('coin combination index path', {:type => :feature}) do
  it('takes you to the root path') do
    visit('/')
    fill_in('coin_combo', :with => 48)
    click_button('Submit')
    expect(page).to have_content("1 quarter 2 dimes 3 pennies")
  end
end
