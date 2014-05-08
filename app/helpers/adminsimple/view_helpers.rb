module Adminsimple::ViewHelpers

  def flash_messages
    messages = ''
    [:alert, :notice].each do |prop|
      messages << flash_message(prop) if flash[prop].present?
    end
    content_tag(:div, messages.html_safe, class: 'flash-messages')
  end

  def flash_message(prop = :notice)
    style = case prop
      when :notice then 'success'
      when :alert then 'danger'
      else 'info'
    end
    content_tag(:div, flash[prop].html_safe, class: "alert alert-#{style}")
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
