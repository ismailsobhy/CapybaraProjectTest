module ControllerHelpers
  def login_with(user = double('user'), scope = :user)
    current_user = "current_#{scope}".to_sym
    if user.nil?
      allow(request.env['warden']).to receive(:authenticate!).and_throw(:warden, {:scope => scope})
      allow(controller).to receive(current_user).and_return(nil)
    else
      allow(request.env['warden']).to receive(:authenticate!).and_return(user)
      allow(controller).to receive(current_user).and_return(user)
    end
  end
end

def login(user)
  fill_in('Email', with: user.email)
  fill_in('Password', with: '12345678')
  click_on('Log in')
end

def createPost(post)
  click_on('Create New Post')
  
  fill_in('post_title', with: post.title)
  
  page.within_frame(:css,"iframe") do
    find("body").send_keys(post.description)
  end


  click_on('Create');

end