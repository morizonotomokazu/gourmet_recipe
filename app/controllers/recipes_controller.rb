class RecipesController < ApplicationController
  before_action :authenticate_user!,except: [:index,:show]
  before_action :set_recipe ,only:[:show,:edit,:update,:destroy]
  before_action :prohibit_access,only:[:edit,:update,:destroy]
  def index
    @recipes = Recipe.all
    recipes = Recipe.order("created_at DESC")
  end

  def show
    @comment = Comment.new
    @comments = @recipe.comments
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @recipe.update(recipe_params)
      redirect_to action: :show
    else
      render :edit
    end
  end

  def destroy
       
    if @recipe.destroy
         redirect_to root_path
    else
         render :show
    end
  end

  private
  def recipe_params
    params.require(:recipe).permit( :recipe_name, :recipe_text,:category_id ,:material,:image).merge(user_id: current_user.id )
  end
  def set_recipe
    @recipe = Recipe.find(params[:id])
  end

  def prohibit_access
    if @recipe.user_id != current_user.id
      redirect_to root_path
    end
  end
end
