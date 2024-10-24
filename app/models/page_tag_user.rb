class PageTagUser < ApplicationRecord
  belongs_to :user
  belongs_to :page_tag
end
