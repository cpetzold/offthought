class CategoriesController < ApplicationController
  # GET /categories
  # GET /categories.xml
  def index
    @categories = Category.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @categories }
    end
  end

  # GET /categories/1
  # GET /categories/1.xml
  def show
    @category = page_category
    @posts = @category.posts

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @category }
    end
  end

  # GET /categories/new
  def new
    @category = Category.new
  end

  # GET /categories/1/edit
  def edit
    @category = page_category
  end

  # POST /categories
  def create
    @category = Category.new(params[:category])

    if @category.save
      flash[:notice] = 'Category was successfully created.'
      redirect_to @category
    else
      render :action => "new"
    end
  end

  # PUT /categories/1
  def update
    @category = page_category

    if @category.update_attributes(params[:category])
      flash[:notice] = 'Category was successfully updated.'
      redirect_to @category
    else
      render :action => "edit"
    end

  end

  # DELETE /categories/1
  def destroy
    @category = page_category
    @category.destroy
    redirect_to categories_path
  end
  
  def page_category
    Category.find_by_permalink(params[:id])
  end
  
end
