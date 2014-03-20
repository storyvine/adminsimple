module Adminsimple::ViewHelpers

  def flash_messages
    messages = ''
    [:alert, :notice].each do |prop|
      messages << flash_message(prop) if flash[prop].present?
    end
    messages.html_safe
  end

  def flash_message(prop = :notice)
    close_button = content_tag(:button, '&times;'.html_safe, class: 'close', data: {dismiss: 'alert'})
    content = content_tag(:strong, "#{prop.to_s.titleize}! ") + flash[prop]
    content_tag(:div, "#{content}#{close_button}".html_safe, class: "alert alert-#{prop}")
  end

  def modal_for(label, path, options = {})
    options = options.dup.merge(data: {toggle: "modal", target: "#modal", keyboard: "false", backdrop: "static"})
    link_to label, path, options
  end

  def paginate(collection, options = {})
    options[:inner_window] ||= 2
    options[:outer_window] ||= 1
    will_paginate(collection, options)
  end

end
