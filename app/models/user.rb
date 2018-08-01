class User < ActiveRecord::Base
  has_many :posts
  has_many :comments
  has_secure_password
  has_one_attached :avatar
  acts_as_commontator

  def profile_pic
    return self.avatar.variant(resize:"200x200")
  end

  def profile_pic_post
    return self.avatar.variant(resize:"100x100")
  end

  def profile_pic_post
    return self.avatar.variant(resize:"25x25")
  end
end
