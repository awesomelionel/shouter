class PhotoShout < ActiveRecord::Base
  has_attached_file :image, styles: {
    shout: "200x200>"
  }

  # required in paperclip 4.0
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end
