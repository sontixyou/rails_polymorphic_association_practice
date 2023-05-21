class CreatePictures < ActiveRecord::Migration[7.0]
  def change
    create_table :pictures do |t|
      t.string :title
      t.text :body
      t.references :imageable, polymorphic: true
      # 下記のようにも書ける
      # t.bigint  :imageable_id
      # t.string  :imageable_type

      t.timestamps
    end
  end
end
