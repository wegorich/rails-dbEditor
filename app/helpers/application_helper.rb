module ApplicationHelper
  def tab_item(name, url)
    opts = {}
    opts[:class] = 'active' if current_page?(url)
    content_tag :li, opts do
      link_to name, url
    end
  end

  def link_to_add_fields(name, f, type)
    new_object = f.object.send "build_#{type}"
    id = "new_#{type}"
    fields = f.send("#{type}_fields", new_object, child_index: id) do |builder|
      render(type.to_s + '_fields', f: builder)
    end
    link_to(name, '#', class: 'btn btn-regular add-field', data: {id: id, fields: fields.gsub("\n", '')})
  end

  def avatar_url(user, size)
    if user.avatar_url.present?
      user.avatar_url
    else
      gravatar_id = Digest::MD5.hexdigest(user.email.downcase)
      "http://gravatar.com/avatar/#{gravatar_id}.png?s=#{size == :small ? 32 : 200 }"
    end
  end
end
