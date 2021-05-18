class CreateBlog1s < ActiveRecord::Migration[6.1]
  def change
    create_table :blog1s do |t|
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
