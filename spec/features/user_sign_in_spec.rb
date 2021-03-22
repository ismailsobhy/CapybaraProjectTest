require 'rails_helper'
require './spec/support/controller_helpers'

feature 'User signs in' do
  let(:user) { create(:user) }
  scenario 'with valid credentials' do
    visit(new_user_session_path)
    login(user);
  end

  scenario 'with invalid credentials' do
	visit(new_user_session_path)
    fill_in('Email', with: user.email)
    fill_in('Password', with: '87654321')
    click_on('Log in')
    expect(page).to have_content('Invalid Email or password.')
  end
end

