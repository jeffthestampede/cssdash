module ApplicationHelper

  def avatar_url(user)
    default_url = image_url("gravatar_default.svg")
    gravatar_id = Digest::MD5::hexdigest(user.email).downcase
    # "http://gravatar.com/avatar/#{gravatar_id}.png?s=220"
    "http://gravatar.com/avatar/#{gravatar_id}.png?s=220&d=#{CGI.escape(default_url)}"
    # image_tag(gravatar_url, alt: user.username)
  end

  def image_url(source)
    URI.join(root_url, image_path(source)).to_s
  end

end
