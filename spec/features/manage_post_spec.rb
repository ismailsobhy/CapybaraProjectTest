require 'rails_helper'

feature 'User create post' do
  let(:post) { create(:post) }
  scenario 'with valid data' do
  visit(new_user_session_path)
  login(post.user);
	click_on('Create New Post')
	fill_in('post_title', with: post.title)
	click_on('Source')
	find(:xpath, "//div[@id='cke_1_contents']/textarea").set(post.description)
  find(:xpath, "//input[@name='commit']").click()
  expect(page).to have_content('Post was successfully created.')
  
 end	
end

  

feature 'User edit post' do
  let(:post) { create(:post) }
  scenario 'with valid data using edit link' do
  visit(new_user_session_path)
  login(post.user);
  fill_in('search_query', with: post.description)
	click_on('(edit)')
	click_on('Source')
	
	o = [('a'..'z'), ('A'..'Z')].map(&:to_a).flatten
	string = (0...50).map { o[rand(o.length)] }.join

  find(:xpath, "//input[@name='commit']").click()

  expect(page).to have_content('Post was successfully updated.')
  
 end	
 scenario 'with valid data using edit button next to search result' do
  visit(new_user_session_path)
  login(post.user);
  title=post.title
  fill_in('search_query', with: post.description)
 
	find(:xpath, "(//a[.='"+title+"'])[1]").click()
  find(:xpath,"(//a[text()='Edit' and contains(@class,'btn-primary')])[1]").click();
 
  click_on('Source')
	
	o = [('a'..'z'), ('A'..'Z')].map(&:to_a).flatten
	string = (0...50).map { o[rand(o.length)] }.join
  
  find(:xpath, "//div[@id='cke_1_contents']/textarea").set(string)
  find(:xpath, "//input[@name='commit']").click()

  expect(page).to have_content('Post was successfully updated.')
	  
end	
end


feature 'User deletes post' do
  let(:post) { create(:post) }
  scenario '1' do
    visit(new_user_session_path)
    login(post.user);
    title=post.title
    fill_in('search_query', with: post.description)
 
	  find(:xpath, "(//a[.='"+title+"'])[1]").click()
 
    click_on('Delete')
    page.driver.browser.switch_to.alert.accept
    expect(page).to have_content('Post deleted successfully.')
  
 end	
end

feature 'User manages comment for post' do
  let(:comment) { create(:comment) }
  scenario 'creates comment' do
    visit(new_user_session_path)
    login(comment.post.user);
    title=comment.post.title
    fill_in('search_query', with: comment.post.description)
 
	  find(:xpath, "(//a[.='"+title+"'])[1]").click()
 
    fill_in('comment_body', with: comment.body)
    find(:xpath, "//input[@name='commit']").click()

    commentElem = find(:xpath,"(//div[@class='media-body'])[last()]")
    body=comment.body
    expect(commentElem).to have_content(body)
 end
 

end