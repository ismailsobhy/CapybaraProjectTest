require 'rails_helper'

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
    let(:post) { create(:post) }
    scenario 'with wrong description' do
    visit(new_user_session_path)
    login(post.user);

    o = [('a'..'z'), ('A'..'Z')].map(&:to_a).flatten
    randomDescription = (0...50).map { o[rand(o.length)] }.join

    fill_in('search_query', with: randomDescription)
    click_on("Search")
    expect(page).to have_content("No posts found")
    end
   end
  