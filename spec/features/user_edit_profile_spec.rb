require 'rails_helper'
require './spec/support/controller_helpers'
feature 'User edit profie' do
  let(:user) { create(:user) }
  scenario 'with valid data' do
    visit(new_user_session_path)
    login(user);
    click_on('Edit profile')

    fill_in('user_email', with: user.email)
    
    fill_in('user_password',with: 'bm123456')
    fill_in('user_password_confirmation',with: "bm123456")
    fill_in('user_current_password',with: user.password)
    click_on('Update')
    
    expect(page).to have_content('Your account has been updated successfully.')
  end
end
