require 'rails_helper'

feature 'User deletes post' do
    let(:post) { create(:post) }
    scenario 'using search and click on button' do
      visit(new_user_session_path)
      login(post.user);
      title=post.title
      fill_in('search_query', with: post.description)
   
      click_link(post.title)
      
      accept_confirm do
        click_link 'Delete'
      end
     
      expect(page).to have_content('Post deleted successfully.')
      expect(page).to have_current_path("/posts")
    
   end	
  end