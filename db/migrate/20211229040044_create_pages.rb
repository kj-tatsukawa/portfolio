class CreatePages < ActiveRecord::Migration[6.1]
  def change
    create_table :pages do |t|
      t.string :page_title
      t.text :page_body
      t.string :content_type

      t.timestamps
    end
  end
end
