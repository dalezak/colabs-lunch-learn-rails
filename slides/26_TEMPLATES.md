# Templates
```
mkdir -p lib/templates/erb/scaffold && cp $(bundle show railties)/lib/rails/generators/erb/scaffold/templates/* lib/templates/erb/scaffold
```
```
mkdir -p lib/templates/rails/scaffold_controller && cp $(bundle show jbuilder)/lib/generators/rails/templates/* lib/templates/rails/scaffold_controller
```
- `lib/templates/erb/scaffold/index.html.erb.tt`
```
<ol class="breadcrumb">
  <li class="breadcrumb-item active mr-auto"><%= plural_table_name.capitalize %></li>
</ol>
<div class="card-columns">
  <%% @<%= plural_table_name %>.each do |<%= singular_table_name %>| %>
    <div class="card card mb-4 shadow-sm">
      <div class="card-body">
        <h5 class="card-title"><%%= link_to <%= singular_table_name %>.to_s, <%= model_resource_name %> %></h5>
        <p class="card-text"><%%= <%= singular_table_name %>.created_at %></p>
      </div>
    </div>
  <%% end %>
</div>
``` 
- `lib/templates/erb/scaffold/show.html.erb.tt`
```
<ol class="breadcrumb">
  <li class="breadcrumb-item"><%%= link_to "<%= plural_table_name.capitalize %>", <%= index_helper %>_path %></li>
  <li class="breadcrumb-item active mr-auto"><%%= @<%= singular_table_name %>.id %></li> 
</ol>
<div class="card shadow-sm">
  <ul class="list-group list-group-flush">
<% attributes.reject{|a| a.name == 'type' || a.name == 'deleted_at' || a.name == 'password_digest'}.each do |attribute| -%>
    <li class="list-group-item">
      <p class="font-weight-bold"><%= attribute.human_name %></p>
      <p class="font-weight-normal"><%%= @<%= singular_table_name %>.<%= attribute.name %> %></p>
    </li>
<% end -%>
  </ul>
</div>
```
- `lib/templates/erb/scaffold/new.html.erb.tt`
```
<ol class="breadcrumb">
  <li class="breadcrumb-item"><%%= link_to "<%= plural_table_name.capitalize %>", <%= index_helper %>_path %></li>
  <li class="breadcrumb-item active">Add</li>
</ol>

<%%= render 'form', <%= singular_table_name %>: @<%= singular_table_name %> %>
```
- `lib/templates/erb/scaffold/edit.html.erb.tt`
```
<ol class="breadcrumb">
  <li class="breadcrumb-item"><%%= link_to "<%= plural_table_name.capitalize %>", <%= index_helper %>_path %></li>
  <li class="breadcrumb-item"><%%= link_to @<%= singular_table_name %>.id, @<%= singular_table_name %> %></li>
  <li class="breadcrumb-item active">Edit</li>
</ol>

<%%= render 'form', <%= singular_table_name %>: @<%= singular_table_name %> %>
```
- `lib/templates/erb/scaffold/_form.html.erb.tt`
```
<%% if <%= singular_table_name %>.errors.any? %>
  <%% <%= singular_table_name %>.errors.full_messages.each do |message| %>
  <div class="alert alert-danger" role="alert">
    <%%= message %>
  </div>
  <%% end %>
<%% end %>
<%%= form_with(model: <%= model_resource_name %>, local: true) do |form| -%>
<div class="card shadow-sm">
  <ul class="list-group list-group-flush">
<% attributes.reject{|a| a.name == 'type' || a.name == 'deleted_at' || a.name.end_with?("_count")}.each do |attribute| -%>
    <li class="list-group-item">
      <div class="form-group">
<% if attribute.password_digest? -%>
        <%%= form.label :password, class: "font-weight-bold" %>
        <%%= form.password_field :password, placeholder: "Enter password", class: "form-control" %>
        <%%= form.label :password_confirmation, class: "font-weight-bold" %>
        <%%= form.password_field :password_confirmation, placeholder: "Enter password confirmation", class: "form-control" %>
<% else -%>
        <%%= form.label :<%= attribute.column_name %>, class: "font-weight-bold" %>
        <%%= form.<%= attribute.field_type %> :<%= attribute.column_name %>, placeholder: "Enter <%= attribute.column_name %>", class: "form-control" %>
<% end -%>
      </div>
    </li>
<% end -%>
  </ul>
  <div class="card-footer">
    <%%= link_to "Cancel", <%= model_resource_name %>, class: 'btn btn-outline-secondary float-left' if <%= singular_table_name %>.persisted? %>
    <%%= link_to "Cancel", <%= index_helper %>_path, class: 'btn btn-outline-secondary float-left' if !<%= singular_table_name %>.persisted? %>
    <%%= form.submit "Save", class: "btn btn-primary float-right" if <%= singular_table_name %>.persisted? %>
    <%%= form.submit "Create", class: "btn btn-primary float-right" if !<%= singular_table_name %>.persisted? %>
  </div>
</div>
<%% end %>
```

## [Next: Scaffolds 2.0](27_SCAFFOLDS.md)