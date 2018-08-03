require 'open-uri'

class Post < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  has_one_attached :post_image
  # before_save :grab_image
  # acts_as_commontable

  attr_accessor :likes

  def post_pic
    return self.post_image.variant(resize:"300x300")
  end

  def post_pic_show
    return self.post_image.variant(resize:"500x500")
  end

  def post_pic_display
    return self.post_image.variant(resize:"500x500")
  end

  # def grab_image
  #   downloaded_image = open("http://www.example.com/image.jpg")
  #   self.avatar.attach(io: downloaded_image  , filename: "foo.jpg")
  # end

end
