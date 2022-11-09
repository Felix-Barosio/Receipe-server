class CreateMessages < ActiveRecord::Migration[6.1]
  def change
    create_table :messages do |t|
      t.string :name
      t.string :email
      t.string :message
      
      t.timestamps null: false
    end
  end
end
