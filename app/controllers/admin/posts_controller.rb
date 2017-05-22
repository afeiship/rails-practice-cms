class Admin::PostsController < Admin::BaseController
  def index
    @admin_posts = Admin::Post.all
  end

  def show
    @admin_post = Admin::Post.find(params[:id])
  end

  def edit
    @admin_post = Admin::Post.find(params[:id])
  end


  def new
    @admin_post = Admin::Post.new
  end

  def create
    @admin_post = Admin::Post.new(admin_post_params)
    if @admin_post.save
      redirect_to @admin_post, notice: 'Post was successfully created.'
    else
      render :new
    end
  end

  def update
    @admin_post = Admin::Post.find(params[:id])
    if @admin_post.update(admin_post_params)
      redirect_to @admin_post, notice: 'Post was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @admin_post = Admin::Post.find(params[:id])
    @admin_post.destroy
    redirect_to admin_posts_url, notice: 'Post was successfully destroyed.'
  end


  private
  def set_admin_post
    @admin_post = Admin::Post.find(params[:id])
  end
  # Never trust parameters from the scary internet, only allow the white list through.
  def admin_post_params
    if params[:action] == 'new'
      nil
    else
      params.require(:admin_post).permit(:title, :content)
    end
  end

end
