
feature 'User create post' do
  let!(:user) { create(:user) }
  let!(:post) { create(:post, user: user) }

  scenario 'with valid data' do
  visit(new_user_session_path)
  login(user);
  click_on('Create New Post')
  expect(page).to have_field("post_title")
  
  fill_in('post_title', with: post.title)
  
  page.within_frame(:css,"iframe") do
    find("body").send_keys(post.description)
  end


  click_on('Create');

  expect(page).to have_content('Post was successfully created.')

  expect(page).to have_link('Edit', visible: true)
  expect(page).to have_link('Delete', visible: true)
  

  expect(page).to have_css("h2.title", :text => post.title)

  expect(page).to have_selector(:css, "div.container p", :text => post.description)


  expect(page).to have_content('Post was successfully created.')

  click_link('Posts');

  expect(page).to have_content(post.title)
  expect(page).to have_content(post.description)
  end
  scenario 'with invalid data (empty)' do
    visit(new_user_session_path)
    login(user);
    click_on('Create New Post')
    expect(page).to have_no_content("post_title")
  
    
    click_on('Create');
    
    expect(page).to have_content('Creation failed! Title can\'t be blank, Description can\'t be blank')
   end	
end