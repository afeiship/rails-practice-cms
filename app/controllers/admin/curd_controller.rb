include CurdHelper
class Admin::CurdController < ActionController::Base
    
    layout 'layouts/admin'
    
    def initialize
        super
    end

    def index 
        @items = CurdHelper::Actions.index
    end

    protected
    def set_item
       @item = model.find(params[:id]);
    end

    # need optimize: 
    def strong_params
        if params[:action] == 'new'
            nil
        else
            params.require(:model).permit!
        end
    end
end
