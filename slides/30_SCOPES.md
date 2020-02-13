# Scopes
- `app/models/reason.rb`
```
scope :with_points, ->(include) { includes(:points) if include.present? && include.to_bool }
```
- `app/controllers/reasons_controller.rb`
```
@reasons = Reason.with_points(true).all
```