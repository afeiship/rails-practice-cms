class Admin::TagsController < RailsCurdBase::CurdController

  model :admin_tag
  model_class Admin::Tag
  fields [:name,:content,:description,:post_id]
  
  messages  :create => 'Tag was successfully created.', 
            :update => 'Tag was successfully updated.', 
            :destroy => 'Tag was successfully destroyed.'
  layout 'layouts/admin'



  def create
    p params
    tag = Admin::Tag.new(params)


    tag.save
    post = Admin::Post.find(params[:post_id])
    redirect_to tag
  end


end
