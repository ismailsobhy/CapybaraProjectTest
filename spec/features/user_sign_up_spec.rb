require 'rails_helper'

feature 'User signs up' do
  let(:user) { create(:user) }
  scenario 'with valid data non existing user' do
    visit(new_user_session_path)
    click_on('Registration')

    fill_in('user_email', with: "bob@email.com")
    fill_in('user_password',with: "bob12345")
    fill_in('user_password_confirmation',with: "bob12345")
    
    click_on('Sign up')
    
    expect(page).to have_content('Welcome! You have signed up successfully.')
  end
  scenario 'with valid data (existing user)' do

    visit(new_user_session_path)
    click_on('Registration')

    fill_in('user_email', with: user.email)
    fill_in('user_password',with: user.password)
    fill_in('user_password_confirmation',with: user.password)
    
    click_on('Sign up')
    
    expect(page).to have_content('Email has already been taken')
  end
  scenario 'with non matching passwords' do

    visit(new_user_session_path)
    click_on('Registration')

    fill_in('user_email', with: user.email)
    fill_in('user_password',with: user.password)
    fill_in('user_password_confirmation',with: user.password+"123")
    
    click_on('Sign up')
    
    expect(page).to have_content('Password confirmation doesn\'t match Password')
  end
  scenario 'with non matching passwords' do

    visit(new_user_session_path)
    click_on('Registration')
 
    click_on('Sign up')
    
    expect(page).to have_content('Password can\'t be blank')
    expect(page).to have_content('Email can\'t be blank')
  end
  scenario 'with non shor password' do

    visit(new_user_session_path)
    click_on('Registration')

    fill_in('user_email', with: user.email)
    fill_in('user_password',with: "123")
    fill_in('user_password_confirmation',with: "123")
    
    click_on('Sign up')
    
    expect(page).to have_content('Password is too short (minimum is 8 characters)')
  end
end
