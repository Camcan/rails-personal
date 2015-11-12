require 'rails_helper'

RSpec.feature "Inquiries", type: :feature do
	
	scenario 'a form is visible on the page' do 
		visit contact_path

		expect(page).to have_selector('form')
	end

  scenario 'user can complete and submit the form' do
    visit contact_path

    fill_in 'message', with: "This is my message"

    click_button 'Send'

    expect(page).to have_content('Thank you')
  end

end
