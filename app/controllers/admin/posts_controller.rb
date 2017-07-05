class Admin::PostsController < RailsCurdBase::CurdController

  model :admin_post
  model_class Admin::Post
  fields [:title,:content]
  
  messages  :create => 'Post was successfully created.', 
            :update => 'Post was successfully updated.', 
            :destroy => 'Post was successfully destroyed.'
  layout 'layouts/admin'

end
