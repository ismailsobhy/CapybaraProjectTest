
feature 'User edit post' do

    let(:user) { create(:user) }
    let!(:post) { create(:post, user: user) }


    scenario 'with valid data using edit link to edit description' do
    visit(new_user_session_path)
    login(user);
 
    click_on('(edit)')
        
    updatedDescription="Updated Post Description";

    page.within_frame(:css,"iframe") do
        find("body").set("").send_keys(updatedDescription)
    end


    click_on('Update')
    
    expect(page).to have_content('Post was successfully updated.')
    expect(page).to have_content(updatedDescription)
    
    end	
    scenario 'with invalid data (empty)' do
        visit(new_user_session_path)
        login(user);
        click_on('(edit)')
        expect(page).to have_field("post_title")
        
         find('#post_title').set ''

        page.within_frame(:css,"iframe") do
            find("body").set("")
        end
  
    
        click_on('Update')
        
        expect(page).to have_content("Update failed! Title can't be blank\nTitle *\nTitle can't be blank\nDescription")
       
    end	
    scenario 'with valid data using edit button to edit title' do
        visit(new_user_session_path)
        login(user);
        title=post.title
       
        click_link(post.title);    

        click_link('Edit');    
        
        expect(page).to have_content(post.title)
        fill_in('post_title', with: "Updated Post Title")

        click_on('Update')
  
        expect(page).to have_content('Post was successfully updated.')
    end	
end
  