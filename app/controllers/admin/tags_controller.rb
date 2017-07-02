class Admin::TagsController < RailsCurdBase::CurdController

  model :admin_tag
  model_class Admin::Tag
  fields [:name,:content,:description]
  
  messages  :create => 'Tag was successfully created.', 
            :update => 'Tag was successfully updated.', 
            :destry => 'Tag was successfully destroyed.'
  layout 'layouts/admin'

end
