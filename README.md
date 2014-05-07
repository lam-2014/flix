## Flix ##

Flix is a prototype social network realized for the "Linguaggi e Ambienti Multimediali" course at Politecnico di Torino
(academic year 2013/2014). It is inspired by the [Ruby on Rails Tutorial](http://www.railstutorial.org/) book by
Michael Hartl.

### Pages, helper and routes (LAB 2) ###

1) Creation of static pages for our social network: home, about and contact

- `rails generate controller Pages home about contact` (or from the RubyMine menu *Tools > Run Rails Generator...*)

2) In the home view, add a link to the other two views, e.g., `<%= link_to 'About', '#' %>`

3) Add a title to the HTML files: "Flix | Page name"

- by using the `provide` method in each view, i.e., `<% provide :title, 'Page name' %>`
- by editing the title tag in `app/views/layouts/application.html.erb`, i.e., `<title>Flix | <%= yield(:title) %></title>`
- learn more about `provide` at [http://api.rubyonrails.org/classes/ActionView/Helpers/CaptureHelper.html#method-i-provide](http://api.rubyonrails.org/classes/ActionView/Helpers/CaptureHelper.html#method-i-provide)
