class UsersController < ApplicationController
    
  # GET /users
  # GET /users.xml
  # GET /users.json
  def index
    @users = User.all
    
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @users }
      format.json { render :json => @users }
    end
  end
  
  # GET /user-name
  # GET /user-name.xml
  # GET /user-name.json
  def show
    @user = page_user
    @posts = @user.posts
    
    respond_to do |format|
      format.html # show.html.erb
      format.xml { render :xml => @user }
      format.json { render :json => @user }
    end
  end

  # GET /join
  # GET /users/new
  def new
    @user = User.new
    
    if current_user
      flash[:notice] = "You're logged in, you don't need to sign up!"
      redirect_back
    end
    
  end
  
  # POST /users
  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:notice] = "Hi there, #{@user.username}.  Take a look around!"
      redirect_to root_path
    else
      render :action => 'new'
    end
  end
  
  
  def edit
    @user = page_user
    
    if @user != current_user
      flash[:error] = "You aren't #{@user.username}, get out of here!"
      redirect_back
    end
    
  end
  
   
  def update
    @user = current_user
    if @user.update_attributes(params[:user])
      flash[:notice] = "Successfully updated user."
      redirect_to root_url
    else
      render :action => 'edit'
    end
  end

  # DELETE /users/1
  # DELETE /users/1.xml
  def destroy
    @user = current_user
    @user.destroy
    redirect_to root_url
  end

  # Gets the user navigated to.  If you want the user logged in, use current_user
  def page_user
    User.find_by_permalink(params[:id])
  end

end
