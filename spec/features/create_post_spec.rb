require 'rails_helper'

feature 'User create post' do
  let(:post) { create(:post) }
  scenario 'with valid data' do
  visit(new_user_session_path)
  login(post.user);
  click_on('Create New Post')
  expect(page).to have_field("post_title")

  fill_in('post_title', with: post.title)
  
  page.within_frame(:xpath,"//div[@id='cke_1_contents']//iframe") do
    find(:xpath, "//body").send_keys(post.description)
  end
  click_on('Create');

  expect(page).to have_content('Post was successfully created.')

  expect(page).to have_link('Edit', visible: true)
  expect(page).to have_link('Delete', visible: true)
  

  expect(page).to have_css("h2.title", :text => post.title)

  expect(page).to have_selector(:xpath, "//div[@class='container']//p", :text => post.description)

  end
  scenario 'with invalid data (empty)' do
    visit(new_user_session_path)
    login(post.user);
    click_on('Create New Post')
    expect(page).to have_field("post_title")
  
    
    click_on('Create');
  
    expect(page).to have_content('Creation failed! Title can\'t be blank, Description can\'t be blank')
    end	
end