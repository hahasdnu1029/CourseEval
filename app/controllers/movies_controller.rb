class MoviesController < ApplicationController

  def movie_params
    params.require(:movie).permit(:title, :rating, :credit,:classhour, :description)
  end

  def show
    id = params[:id] # retrieve movie ID from URI route
    @movie = Movie.find(id)   # look up movie by unique ID
    # will render app/views/movies/show.<extension> by default
    showtitle = @movie.title
    @reviews =Review.where("coursename=?",showtitle)
    @rating1 =@reviews.average(:ratingone)
    @rating2 =@reviews.average(:ratingtwo)
    @rating3 =@reviews.average(:ratingthree)
    if @rating1==nil
      @movie.rating=0
    else
      @movie.rating=(@rating1+@rating2+@rating3)/3
    end
  end

  def index
    @movies = Movie.all
    @movies.each do |movie|
       @rating11=Review.where("coursename=?",movie.title).average(:ratingone)
       @rating22=Review.where("coursename=?",movie.title).average(:ratingtwo)
       @rating33=Review.where("coursename=?",movie.title).average(:ratingthree)
       if @rating11==nil
          movie.rating=0
        else
          movie.rating=(@rating11+@rating22+@rating33)/3
       end
     end
    #sprintf("welcome, %s!", user.name)
  end

  def new
    # default: render 'new' template
  end

  def create
    @movie = Movie.create!(movie_params)
    flash[:notice] = "#{@movie.title} 课程成功创建，快来评价下吧."
    redirect_to movies_path
  end

  def edit
    @movie = Movie.find params[:id]
  end

  def update
    @movie = Movie.find params[:id]
    @movie.update_attributes!(movie_params)
    flash[:notice] = "#{@movie.title} was successfully updated."
    redirect_to movie_path(@movie)
  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
    flash[:notice] = "movie '#{@movie.title}' deleted."
    redirect_to movies_path
  end

end