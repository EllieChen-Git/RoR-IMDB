class MoviesController < ApplicationController
    before_action :setup_data
    
    def index


    end

    def create

    end

    def new
        @movie_id = @movies[params[:id].to_i]
        @movies.push(params[:movie])
        
        redirect to movie_path(@movies.length - 1)
    end

    def show

    end


    private

    def setup_data
        session[:movies] = [
            {title: "Batman", genre: "Action"},
            {title: "Rat Race", genre: "Drama"},
            {title: "Shrek", genre: "Thriller"},
            {title: "Parent Trap", genre: "Horror"},
        ] unless session[:movies]
    
        @movies = session[:movies]
    end
end