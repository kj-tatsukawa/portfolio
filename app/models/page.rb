class Page < ApplicationRecord
  validates :content_type, presence: true
  validates :page_title, presence: true, length: {maximum: 50}
  validates :page_body, presence: true
end
