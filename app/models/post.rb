class Post < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  has_one_attached :post_image

  def post_pic
    return self.post_image.variant(resize:"300x300")
  end

end
