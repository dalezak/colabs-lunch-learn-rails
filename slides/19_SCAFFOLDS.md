# Scaffolds
```
rails generate scaffold Reason text:string --force --no-javascripts --no-stylesheets
```
- `app/controllers/reasons_controller.rb`
- `app/helpers/reasons_helper.rb`
- `app/models/reason.rb`
- `app/views/reasons/index.html.erb`
- `app/views/reasons/show.html.erb`
- `app/views/reasons/edit.html.erb`
- `app/views/reasons/new.html.erb`
- `app/views/reasons/_form.html.erb`
- `app/views/reasons/index.json.jbuilder`
- `app/views/reasons/show.json.jbuilder`
- `app/views/reasons/_reason.json.jbuilder`
```
rails generate scaffold Point text:string reason:references --force --no-javascripts --no-stylesheets
```
- `app/models/reason.rb`
```
has_many :points
```
- `app/models/point.rb`
```
belongs_to :reason
```

> Hmm, readable code.... 

## [Next: More Routes](20_ROUTES.md)