# Scopes
- `app/models/reason.rb`
```
scope :with_points, ->(include) { includes(:points) if include.present? && include.to_bool }
```
- `app/controllers/reasons_controller.rb`
```
@reasons = Reason.with_points(true).all
```

## [Next: Config Initializers](31_INITIALIZERS.md)