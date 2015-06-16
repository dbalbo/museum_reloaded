Museum Tracker

A small web app that shows museums and can add, delete, edit and list both Museums and the artwork that is in them.

GitHub Link: 

 is a small app that allows a user to view teams attending. It also allows a Coordinator to add teams, and view all members of that team. It also allows the adding of team members. Made for an assesment at Epicodus. Installation

Museuum_Tracker Ruby 2.1.3 You will need to install the bundle gem. In your terminal, navigate to the project directory and run this command:

$ bundle install

To run the page, enter this command in your terminal

$ ruby app.rb

In your web browser, enter this url: http://localhost:4567

A work in progress

Authoed by :Debbie Balbo Lisence

MIT Lisence (c) 2015 Debbie Balbo

work in progress***

database schema can be created following these instructions:

CREATE DATABASE museum_tracker;
\c museum_tracker

CREATE TABLE museums (id serial PRIMARY KEY, name varchar);
CREATE TABLE artworks(id serial PRIMARY KEY, museum_id int, description varchar);

CREATE DATABASE museum_tracker WITH TEMPLATE museum;