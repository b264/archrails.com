class CreateSuggestions < ActiveRecord::Migration[5.0]
  def change
    create_table :suggestions do |t|
      t.integer :category, default: 0
      t.string :author
      t.string :content

      t.timestamps
    end
  end
end
