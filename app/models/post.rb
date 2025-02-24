class Post < ActiveRecord::Base
    validates :title, presence: true
    validates :content, length: { minimum: 250 }
    validates :summary, length: { maximum: 250 }
    validates :category, inclusion: { in: %w(Fiction Nonfiction), message: "%{value} is not a valid category" }

    include ActiveModel::Validations
    validates_with ClickbaitValidator


    

end
