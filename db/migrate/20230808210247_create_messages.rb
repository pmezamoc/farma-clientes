class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.references :chat, foreign_key: true
      t.integer :role
      t.string :content

      t.timestamps
    end
  end
end
