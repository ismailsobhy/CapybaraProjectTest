require 'rails_helper'

feature 'User create post' do
  let(:post) { create(:post) }
  scenario 'with valid data' do
  visit(new_user_session_path)
  login(post.user);
  click_on('Create New Post')
  expect(page).to have_field("post_title")
	fill_in('post_title', with: post.title)
	click_on('Source')
	find(:xpath, "//div[@id='cke_1_contents']/textarea").set(post.description)
  find(:xpath, "//input[@name='commit']").click()
  expect(page).to have_content('Post was successfully created.')
  end	
end
  
feature 'User edit post' do
  let(:post) { create(:post) }
  scenario 'with valid data using edit link to edit description' do
  visit(new_user_session_path)
  login(post.user);
  fill_in('search_query', with: post.description)
	click_on('(edit)')
  expect(page).to have_field("post_title")
  click_on('Source')
	
	o = [('a'..'z'), ('A'..'Z')].map(&:to_a).flatten
	string = (0...50).map { o[rand(o.length)] }.join
  
  find(:xpath, "//div[@id='cke_1_contents']/textarea").set(string)
  
  find(:xpath, "//input[@name='commit']").click()

  expect(page).to have_content('Post was successfully updated.')
  
  end	
 
  scenario 'with valid data using edit button to edit title' do
  visit(new_user_session_path)
  login(post.user);
  title=post.title
  fill_in('search_query', with: post.description)
 
	find(:xpath, "(//a[.='"+title+"'])[1]").click()
  
  find(:xpath,"(//a[text()='Edit' and contains(@class,'btn-primary')])[1]").click();
 
  expect(page).to have_field("post_title")
	o = [('a'..'z'), ('A'..'Z')].map(&:to_a).flatten
	string = (0...20).map { o[rand(o.length)] }.join
  fill_in('post_title', with: string)
  
  find(:xpath, "//input[@name='commit']").click()

  expect(page).to have_content('Post was successfully updated.')
	  
  end	
end

feature 'User deletes post' do
  let(:post) { create(:post) }
  scenario 'using search and click on button' do
    visit(new_user_session_path)
    login(post.user);
    title=post.title
    fill_in('search_query', with: post.description)
 
	  find(:xpath, "(//a[.='"+title+"'])[1]").click()
    expect(page).to have_link("Delete")
    click_on('Delete')
    page.driver.browser.switch_to.alert.accept
    expect(page).to have_content('Post deleted successfully.')
  
 end	
end

feature 'User adds comment for post' do
  let(:comment) { create(:comment) }
  scenario 'with valid data' do
    visit(new_user_session_path)
    login(comment.post.user);
    title=comment.post.title
    fill_in('search_query', with: comment.post.description)
    
	  find(:xpath, "(//a[.='"+title+"'])[1]").click()
    expect(page).to have_field("comment_body")
    
    fill_in('comment_body', with: comment.body)
    find(:xpath, "//input[@name='commit']").click()

    commentElem = find(:xpath,"(//div[@class='media-body'])[last()]")
    body=comment.body
    expect(commentElem).to have_content(body)
 end
end