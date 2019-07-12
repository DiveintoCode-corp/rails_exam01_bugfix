class BlogsController < ApplicationController
  # ErrorCause: undefined method `destroy' for nil:NilClass, @blog is nil
  # FixReason: add :destroy to before_action callback
  before_action :set_blog, only: [:show, :edit, :update, :destroy]

  def index
    @blogs = Blog.all
  end

  def show; end

  def new
    @blog = Blog.new
  end

  def edit; end

  def create
    @blog = Blog.new(blog_params)
    if @blog.save
      redirect_to @blog, notice: 'Blog was successfully created.'
    else
      render :new
    end
  end

  def update
    if @blog.update(blog_params)
      redirect_to @blog, notice: 'Blog was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @blog.destroy
    redirect_to blogs_url, notice: 'Blog was successfully destroyed.'
  end

  private

  def set_blog
    @blog = Blog.find(params[:id])
  end

  # ErrorCause: blog_params don't permit :content
  # FixReason: add parameter to permit :content
  def blog_params
    params.require(:blog).permit(:title, :content)
  end
end
