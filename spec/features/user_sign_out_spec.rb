
feature 'User signs out' do
    let(:user) { create(:user) }
    scenario 'redirects the user to the signin page' do
      visit(new_user_session_path)
      login(user);
      click_link('Logout')
    
      expect(page).to have_content('You need to sign in or sign up before continuing.')
      expect(page).to have_current_path(new_user_session_path)
    end
end