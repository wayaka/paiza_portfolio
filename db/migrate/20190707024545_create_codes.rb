class CreateCodes < ActiveRecord::Migration[5.2]
  def change
    create_table :codes do |t|
      t.string :source
      t.references :user, foreign_key: true
      t.references :language, foreign_key: true
      t.timestamps
    end
  end
end
