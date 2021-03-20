require 'rails_helper'

feature 'User adds comment for post' do
    let(:comment) { create(:comment) }
    scenario 'with valid data' do
      visit(new_user_session_path)
      login(comment.post.user);

      click_link(comment.post.title);    

      num=find('h2.subtitle').text.scan(/\d+/)[0].to_i+1
      
      fill_in('Body', with: comment.body)
      click_button("Add comment");

      expect(page).to have_content(comment.body)
      expect(page).to have_content("#{num} Comments")
      
   end
end