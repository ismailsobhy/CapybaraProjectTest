
feature 'User open post' do
  let(:post) { create(:post) }
  scenario 'list' do
    visit(new_user_session_path)
    login(post.user);
  
    page.all(:xpath, "//div[@class='media']").each do |el|
      
      title=el.find(:xpath,"//h5/a[1]").text
      desc=el.text.gsub(find(:xpath,"//h5").text,'').strip
      #will fail if not found 
      post=Post.where(title: title,description:desc).first!()
    
    end
  
  end
end

