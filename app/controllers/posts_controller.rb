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
    @post = page_post

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post }
      format.json { render :json => @post }
    end
  end

  # GET /posts/new
  def new
    @post = Post.new
  end

  # GET /posts/post-title/edit
  def edit
    @post = page_post
  end

  # POST /posts
  def create
    @post = Post.new(params[:post])

    if @post.save
      flash[:notice] = 'Post was successfully created.'
      redirect_to @post
    else
      render :action => "new"
    end
  end

  # PUT /posts/post-title
  def update
    @post = page_post

    if @post.update_attributes(params[:post])
      flash[:notice] = 'Post was successfully updated.'
      redirect_to @post
    else
      render :action => "edit"
    end
  end

  # DELETE /posts/post-title
  def destroy
    @post = page_post
    @post.destroy
    redirect_to(posts_url)
  end

  # Returns the post navigated to
  def page_post
    Post.find_by_permalink(params[:id])
  end

end
