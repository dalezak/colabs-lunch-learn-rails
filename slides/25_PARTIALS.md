# Partials
- `app/views/layouts/_navbar.html.erb`
```
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="/">CoLabs</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" href="/reasons">Reasons</a>
      </li>
    </ul>
  </div>
</nav>
```

# Layouts
- `app/views/layouts/application.html.erb`
```
<%= render '/layouts/navbar' %>
<div id="app" class="container mt-4">
  <%= yield %>
</div>
```

## [Next: Rails Templates](26_TEMPLATES.md)