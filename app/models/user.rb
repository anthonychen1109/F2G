class User < ActiveRecord::Base
  has_many :posts
  has_many :comments
  has_secure_password
  has_one_attached :avatar
  acts_as_commontator
  validates :name, presence: true
  validates :password, length: { minimum: 5 }
  validates_format_of :name, :with => /\A[^0-9`!@#\$%\^&*+_='"]+\z/

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
