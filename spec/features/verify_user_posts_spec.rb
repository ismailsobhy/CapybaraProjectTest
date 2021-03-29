
feature 'verify user posts' do
  let(:user) { create(:user) }
  let!(:post1) { create(:post, user: user) }  
  let!(:post2) { create(:post, user: user) }
  let!(:user2) { create(:user) }
  
  scenario 'after creation for two posts for different user' do
    visit(new_user_session_path)
    login(user);
    createPost(post1);
    click_link('Posts');
    createPost(post2);  
    click_link('Logout')
    login(user2);
   
    page.should have_no_content post1.description
    page.should have_no_content post2.description
  end

  
end

