json.extract! reason, :id, :text, :created_at, :updated_at
json.points reason.points, partial: 'points/point', as: :point if params.fetch(:points, false).to_bool
