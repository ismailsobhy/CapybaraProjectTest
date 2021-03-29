
feature 'User create post' do
  let(:user) { create(:user) }
  let!(:post) { create(:post, user: user) }

  scenario 'with valid data' do
  visit(new_user_session_path)
  login(user);
  createPost(post);
  expect(page).to have_content('Post was successfully created.')

  expect(page).to have_link('Edit', visible: true)
  expect(page).to have_link('Delete', visible: true)
  

  expect(page).to have_content (post.title)

  expect(page).to have_content (post.description)


  expect(page).to have_content('Post was successfully created.')

  click_link('Posts');

  expect(page).to have_content(post.title)
  expect(page).to have_content(post.description)
  end
  scenario 'with invalid data (empty)' do
    visit(new_user_session_path)
    login(user);
    click_on('Create New Post')
    
    click_on('Create');
    
    expect(page).to have_content('Creation failed! Title can\'t be blank, Description can\'t be blank')
   end	
end