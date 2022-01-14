class Menu < ApplicationRecord
  with_options presence: true, uniqueness: true do
    validates :menu_name, length: {maximum: 15}
    validates :menu_url, length: {maximum: 30}, format: {with: /\A[a-zA-Z0-9]+\z/}
  end
end
