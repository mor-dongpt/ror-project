class CreateAdminsWords < ActiveRecord::Migration[7.1]
  def change
    create_table :admins_words do |t|
      t.string :key, null: false
      t.string :description, null: false

      t.timestamps
    end
  end
end
