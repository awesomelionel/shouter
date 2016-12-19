require 'digest/md5'

module ShoutsHelper
  def gravatar user, size = 48
    digest = Digest::MD5.hexdigest(user.email.downcase)
    image_tag("https://gravatar.com/avatar/#{digest}?s=#{size}")
  end
end
