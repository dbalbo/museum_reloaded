Museum Tracker

A small web app written in Ruby and uses a manual psql database that shows museums and can add, delete, edit and list both museums and the artwork that is in them.

It demonstrates RESTful routing capabilities and manual database use. Made for an assesment at Epicodus.

languages used: HTML CSS PSQL RUBY 

	RSPEC, CAPYBARA (for unit testing and integration testing, respectively)

Installation

Museuum_Tracker Ruby 2.1.3 You will need to install the bundle gem. In your terminal, navigate to the project directory and run this command:

$ bundle install

To run the page, enter this command in your terminal

$ ruby app.rb

In your web browser, enter this url: http://localhost:4567



Authored by: Debbie Balbo 

Lisence:

MIT License (c) 2015 Debbie Balbo



database schema can be created following these instructions:

CREATE DATABASE museum_tracker;
\c museum_tracker

CREATE TABLE museums (id serial PRIMARY KEY, name varchar);
CREATE TABLE artworks(id serial PRIMARY KEY, museum_id int, description varchar);

CREATE DATABASE museum_tracker WITH TEMPLATE museum;
