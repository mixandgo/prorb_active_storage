class User < ApplicationRecord
  has_one_attached :avatar do |att|
    att.variant :thumb, resize_to_limit: [100, 100]
  end
  has_many_attached :files

  has_rich_text :bio
end
