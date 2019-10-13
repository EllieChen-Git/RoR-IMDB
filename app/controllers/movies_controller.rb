class MoviesController < ApplicationController
    before_action :setup_data
    
    def index
    end

    def create #actual action of creating new movies & re-directing
        @movies.push(params[:movie])
        redirect_to movies_path
    end

    def new   #form to create new movies
    end

    def show
        @movie_id = params[:id].to_i
    end


    private

    def setup_data
        session[:movies] = [
            { "title" => "Batman", "genre" =>"Action" },
            { "title" => "Rat Race", "genre" =>"Drama" },
            { "title" => "Shrek", "genre" =>"Thriller" },
            { "title" => "Parent Trap", "genre" =>"Horror" }
        ] unless session[:movies]

        @movies = session[:movies]
    end
end