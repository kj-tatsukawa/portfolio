class CreateMenus < ActiveRecord::Migration[6.1]
  def change
    create_table :menus do |t|
      t.string :menu_name
      t.string :menu_url

      t.timestamps
    end
  end
end
