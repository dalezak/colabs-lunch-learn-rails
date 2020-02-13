# Routes
- `config/routes.rb`
```
resources :reasons do
  resources :points
end
```
```
rake routes
```

## [Next: Database Schema](21_SCHEMA.md)