class Post < ActiveRecord::Base
    CATEGORY_TYPES = ["Fiction","Non-Fiction"]
    include ActiveModel::Validations
    validates :title, presence: true
    validates :content, length: {minimum: 250}
    validates :summary, length: {maximum: 250}
    validates :category, inclusion: {in: CATEGORY_TYPES}
    validates_with PostValidator
end
