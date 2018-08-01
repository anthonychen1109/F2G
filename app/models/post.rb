class Post < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  has_one_attached :post_image
  acts_as_commontable

  def post_pic
    return self.post_image.variant(resize:"300x300")
  end

  def post_pic_show
    return self.post_image.variant(resize:"500x500")
  end

end
