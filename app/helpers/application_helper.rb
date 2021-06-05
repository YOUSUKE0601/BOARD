module ApplicationHelper
  def header_link_item(name, path)
    class_name = 'nav-item' #bootstrapデザインに合わせるため必ずつける
    class_name << ' active' if current_page?(path) #表示するpathと引数のpathが同じかを確かめている
    
    content_tag :li, class: class_name do
      link_to name, path, class: 'nav-link'
    end
  end
end
