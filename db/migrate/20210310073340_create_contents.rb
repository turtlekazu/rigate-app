class CreateContents < ActiveRecord::Migration[6.0]
  def change
    create_table :contents do |t|
      t.string     :title
      t.text       :text,       null: false
      t.references :curriculum, foreign_key: true
      t.timestamps
    end
  end
end
