class ReviewsController < ApplicationController
  before_action :set_review, only: [:show, :edit, :update, :destroy]

 def review_params
      params.require(:review).permit(:username, :coursename, :ratingone, :ratingtwo, :ratingthree, :description)
 end
 
  # GET /reviews
  # GET /reviews.json
  def index
    @reviews = Review.all
  end

  # GET /reviews/1
  # GET /reviews/1.json
  def show
    
  end

  # GET /reviews/new
  def new
    @review = Review.new
    title=session[:title]
    @movie=Movie.where("title=?",title)
    #redirect_to reviews_path
    
  end

  # GET /reviews/1/edit
  def edit
    @review = Review.find params[:id]
  end

  # POST /reviews
  # POST /reviews.json
  def create
    @review = Review.create!(review_params)
    @review.save
    flash[:notice] = "成功创建#{@review.coursename} 的评论."
    redirect_to reviews_path   flash: {success: "课程评论成功"}
  end

  # PATCH/PUT /reviews/1
  # PATCH/PUT /reviews/1.json
  def update
    @review = Review.find params[:id]
    @review.update_attributes!(review_params)
    flash[:notice] = "#{@review.coursename} 的评论已更新."
    redirect_to reviews_path
  end

  # DELETE /reviews/1
  # DELETE /reviews/1.json
  def destroy
    @review.destroy
    respond_to do |format|
      format.html { redirect_to reviews_url, notice: '评论已被删除.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_review
      @review = Review.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
   
    
end






