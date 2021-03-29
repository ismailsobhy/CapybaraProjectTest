
feature 'User search post' do
    let(:post) { create(:post) }
    scenario 'with partial description' do
        visit(new_user_session_path)
        login(post.user);

        partialDescription=post.description[0..4];

        fill_in('search_query', with: partialDescription)
        click_on("Search")
    
        expect(page).to have_content(post.title)
    end
    scenario 'with wrong description that will not be found' do
        visit(new_user_session_path)
        login(post.user);

        newDesc = "qwertyuiop"

        fill_in('search_query', with: newDesc)
        click_on("Search")
        expect(page).to have_content("No posts found")
    end
   end
  