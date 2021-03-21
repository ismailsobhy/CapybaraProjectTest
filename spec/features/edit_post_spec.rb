require 'rails_helper'

feature 'User edit post' do
    let(:post) { create(:post) }
    scenario 'with valid data using edit link to edit description' do
    visit(new_user_session_path)
    login(post.user);
    fill_in('search_query', with: post.description)
    click_on("Search")
    
    click_on('(edit)')
    expect(page).to have_field("post_title")
        
    updatedDescription="Updated Post Description";

    page.within_frame(:xpath,"//div[@id='cke_1_contents']//iframe") do
        find(:xpath, "//body").set("").send_keys(updatedDescription)
    end

    click_on('Update')
    
    expect(page).to have_content('Post was successfully updated.')
    expect(page).to have_content(updatedDescription)
    
    end	
    scenario 'with invalid data' do
        visit(new_user_session_path)
        login(post.user);
        fill_in('search_query', with: post.description)
        click_on("Search")
        click_on('(edit)')
        expect(page).to have_field("post_title")
        
         find('#post_title').set ''

        page.within_frame(:xpath,"//div[@id='cke_1_contents']//iframe") do
            find(:xpath, "//body").set("")
        end
    
        click_on('Update')
        
        expect(page).to have_content("Update failed! Title can't be blank\nTitle *\nTitle can't be blank\nDescription")
        
    end	
    scenario 'with valid data using edit button to edit title' do
        visit(new_user_session_path)
        login(post.user);
        title=post.title
        fill_in('search_query', with: post.description)
        click_on("Search")
    
        click_link(post.title);    

        find(:xpath,"(//a[text()='Edit' and contains(@class,'btn-primary')])[1]").click();
   
        expect(page).to have_content(post.title)
        fill_in('post_title', with: "Updated Post Title")

        click_on('Update')
  
        expect(page).to have_content('Post was successfully updated.')
    end	
end
  