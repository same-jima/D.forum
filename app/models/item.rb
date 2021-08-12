class Item < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  
  with_options presence: true do
    validates :name, :text, :image
    validates :category_id, numericality: { other_than: 1 , message: "can't be blank"} 
    validates :price,
     numericality: {greater_than_or_equal_to: 300, less_than_or_equal_to: 9999999, message: "¥300~¥9999999(半角数字)の入力" }

  end
end
