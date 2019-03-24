# tubbs-local-helper
solo project - Tubbs' local helper


Original brief by Codeclan cohort E29 "shop inventory"

The goal is to create an inventory app for internal use of a shop. 

Chosen flair is Leage of Gentlemen, the shop sampled is the "local shop" with the creepy brother-sister couple.

The languages used are tagged in the repo as well: HTML/CSS, Ruby, Sinatra, PG, postgreSQL

MVP functionality includes tables for inventory and sources, CRUD functions for both, and low on stock/out of stock
markers.

CSS and extensions to be added later.

UPDATE:

- Font in PUBLIC -> original font did not work, google font applied and added to PUBLIC
- MISC folder holds notes, diagrams, supporting data not required for app running

additional functionality to be added 

--> third table for overall index with full join on the tables

--> index & create & update & destroy routes for both tables

--> potential staff_bios page for flair

--> some css to make it look less grim



UPDATE: index, create, show, update, destroy functions complete on Alpha, show and index on Beta; 

  css reset operational - if disabled, external font works as well;
  
  app.rb created to combine controllers;
  
  homepage created with combined table information;
  
  functional navbar and "banner" added;
  
  entry names linked to allow editing and deletion;
  
  /source/show lists all inventory items specific to them;
  
  
