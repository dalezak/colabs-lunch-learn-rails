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