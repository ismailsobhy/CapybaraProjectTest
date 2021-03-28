
feature 'User trys to add comment for post' do
   let!(:user) { create(:user) }
   let!(:post) { create(:post, user: user) }
 
    scenario 'with valid data' do
      visit(new_user_session_path)
      login(user);
  
      title=post.title
       
      click_link(post.title);    

        
      fill_in('Body', with: "new comment")
      click_button("Add comment");
  
      expect(page).to have_content("new comment")
      expect(page).to have_content("1 Comments")
        
     end

     scenario 'with empty data' do
      visit(new_user_session_path)
      login(user);
   
      title=post.title
       
      click_link(post.title);    

       expect(page).to have_button('Add comment', disabled: true)
         
      end
end