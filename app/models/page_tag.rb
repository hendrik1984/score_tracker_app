class PageTag < ApplicationRecord
  has_many :page_tag_users
  has_many :users, through: :page_tag_users
end
