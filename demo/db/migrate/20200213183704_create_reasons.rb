class CreateReasons < ActiveRecord::Migration[6.0]
  def change
    create_table :reasons do |t|
      t.string :text

      t.timestamps
    end
  end
end
