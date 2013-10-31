#= require jquery
#= require jquery_ujs
#= require bootstrap
#
#= require_self
#
#= require_tree ./adminsimple/layout

class @Adminsimple

  setTimeout((-> $('body').addClass('animated')), 200) # turn on css transitions

  @Layout: {}

  @loaded: (data = {}) ->
    $('body').addClass("#{data.body_class || ''}")


jQuery -> Adminsimple.loaded()
