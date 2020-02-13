# Scaffolds

```
rm app/controllers/reasons_controller.rb
rm app/helpers/reasons_helper.rb
rm app/models/reason.rb
rm -r app/views/reasons
rm db/migrate/*_create_reasons.rb
```
```
rm app/controllers/points_controller.rb
rm app/helpers/points_helper.rb
rm app/models/point.rb
rm -r app/views/points
rm db/migrate/*_create_points.rb
```
```
rails generate scaffold Reason text:string --force --no-javascripts --no-stylesheets
```
```
rails generate scaffold Point text:string reason:references --force --no-javascripts --no-stylesheets
```
```
rake db:drop
rake db:create
rm db/schema.rb
rake db:migrate
rake db:reset
```