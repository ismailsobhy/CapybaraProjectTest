require 'rails_helper'

feature 'User delete comment for post' do
    let(:comment) { create(:comment) }
    scenario '' do
      visit(new_user_session_path)
      login(comment.post.user);

      fill_in('search_query', with: comment.post.title)
      click_link(comment.post.title);    

      num=find('h2.subtitle').text.scan(/\d+/)[0].to_i-1
      
      accept_confirm do
         find(:xpath, "(//section[contains(@class,'comments')]//a[contains(text(),'Delete')])[1]").click()
      end
     
      expect(page).to have_content("#{num} Comments")
      
   end
end