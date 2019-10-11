# Challenge Instructions

* Guess what...time to create another rails app!
* Create a new app, called imdb, using postgresql as our database

* Create the routes to make a full CRUD resource for movies
    * Not using resource ... actually writing them out

* Create a controller for movies, with all necessary methods
* In the controller, add in the following instance variable:
    * @movies = [
        {title: "Batman", genre: "Action"},
        {title: "Rat Race", genre: "Drama"},
        {title: "Shrek", genre: "Thriller"},
        {title: "Parent Trap", genre: "Horror"},
    ]

* Create the views for movies
* For CREATE and UPDATE, we will need to implement a form!

* By saving all this data into our instance variable, it will not persist
* Practice saving this data into our session data

Advanced:
* After completing the CRUD resource, make it look pretty with some styling

Expert:
* Already done? Add in another CRUD resource for actors
