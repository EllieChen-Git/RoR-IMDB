class MoviesController < ApplicationController
    before_action :setup_data
    
    def index
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