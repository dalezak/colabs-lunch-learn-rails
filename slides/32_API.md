# API
- http://localhost:3000/reasons.json
- http://localhost:3000/reasons/1.json
- `app/views/reasons/_reason.json.jbuider`
```
json.points reason.points, partial: 'points/point', as: :point if params.fetch(:points, false).to_bool
```
- http://localhost:3000/reasons.json?points=true
- http://localhost:3000/reasons.json?points=false
- http://localhost:3000/reasons/1.json?points=true

## [Next: Vue Components](33_VUE.md)