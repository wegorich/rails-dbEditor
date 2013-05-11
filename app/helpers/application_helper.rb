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
end
