class CreateReplies < ActiveRecord::Migration[5.1]
  def change
    create_table :replies do |t|
      t.string :replier
      t.text :body
      t.references :comment, foreign_key: true

      t.timestamps
    end
  end
end
