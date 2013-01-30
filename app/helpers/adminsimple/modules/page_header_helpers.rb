module Adminsimple::Modules::PageHeaderHelpers

  def page_header(options = {}, &block)
    options[:id] ||= "adminsimple_page_header"
    options[:title] ||= controller.controller_name.to_s
    content = block ? capture(&block) : nil
    locals = {content: content, title: options.delete(:title)}
    content_tag(:div, render(partial: 'adminsimple/modules/page_header', locals: locals), options)
  end

end
