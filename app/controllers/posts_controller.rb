class PostsController < ApplicationController

  # GET /posts
  # GET /posts.xml
  # GET /posts.json
  def index
    @posts = Post.all
    
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @posts }
      format.json { render :json => @posts }
    end
  end

  # GET /posts/post-title
  # GET /posts/post-title.xml
  # GET /posts/post-title.json
  def show
    @category = Category.find_by_permalink(params[:category])
    @post = page_post

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post }
      format.json { render :json => @post }
    end
  end

  # GET /posts/new
  def new
    if current_user
      @categories = Category.all
      @category = Category.find_by_permalink(params[:category])
      @post = Post.new
    else
      flash[:error] = 'You must be logged in to post'
      redirect_to posts_path
    end
  end

  # GET /posts/post-title/edit
  def edit
    @categories = Category.all
    @post = page_post
    if current_user != @post.user
      flash[:error] = "Only #{@post.user.username} can edit this post."
      redirect_to posts_path
    end
    
  end

  # POST /posts
  def create
    @categories = Category.all
    @post = Post.new(params[:post])
    @post.user_id = current_user.id
    @post.category_id = params[:category][:id]

    if @post.save
      flash[:notice] = "'#{@post.title}' was successfully created."
      redirect_to post_path @post.category, @post
    else
      render :action => 'new'
    end
  end

  # PUT /posts/post-title
  def update
    @post = page_post

    if @post.update_attributes(params[:post])
      flash[:notice] = "'#{@post.title}' was successfully updated."
      redirect_to post_path @post.category, @post
    else
      flash[:error] = 'Unable to edit'
      render :action => 'edit'
    end
  end

  # DELETE /post-title
  def destroy
    @post = page_post
    title = @post.title
    if @post.destroy
      flash[:notice] = "'#{title}' was removed."
      redirect_to posts_path
    else
      flash[:error] = "Cannot remove '#{title}' at this time."
      redirect_to post_path @post.category, @post
    end
    
  end

  # Returns the post navigated to
  def page_post
    Post.find_by_permalink(params[:id])
  end

end
