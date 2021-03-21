require 'rails_helper'

feature 'User signs up' do
  scenario 'with valid data' do
    visit(new_user_session_path)
    click_on('Registration')

    fill_in('user_email', with: "bob@email.com")
    fill_in('user_password',with: "bob12345")
    fill_in('user_password_confirmation',with: "bob12345")
    
    click_on('Sign up')
    
    expect(page).to have_content('Welcome! You have signed up successfully.')
  end
end
