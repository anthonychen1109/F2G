class User < ActiveRecord::Base
has_many :posts
has_many :comments
has_secure_password
has_one_attached :avatar

  def profile_pic
    return self.avatar.variant(resize:"100x100")
  end
end
