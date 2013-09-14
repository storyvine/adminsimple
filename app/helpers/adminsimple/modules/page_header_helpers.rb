module Adminsimple::Modules::PageHeaderHelpers

  def page_header(options = {}, &block)
    options[:id] ||= "adminsimple_page_header"
    options[:title] ||= controller.controller_name.to_s
    content = block ? capture(&block) : nil
    locals = {content: content, title: options.delete(:title), icon: options.delete(:icon)}
    content_for(:page_title, locals[:title])
    content_for(:page_icon, locals[:icon])
    content_tag(:div, render(partial: 'adminsimple/modules/page_header', locals: locals), options)
  end

end
