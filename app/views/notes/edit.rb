<h1>Edit <%= @note.title %></h1>
<%= form_for @note do |f| %>
  <%= f.label :title %>
  <%= f.text_field :title %>
  <br />
  <%= f.label :author %>
  <%= f.text_field :author %>
  <br />
  <%= f.label :body %>
  <%= f.text_area :body %>
  <br />
  <%= f.submit %>
<% end %>