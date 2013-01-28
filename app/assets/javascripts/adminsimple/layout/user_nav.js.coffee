class Adminsimple.Layout.UserNav
  @el: '#user_nav'

  constructor: ->
    @$el = $(@constructor.el)
    @$main = $('#main_nav')
    @bindEvents()


  bindEvents: ->
    @$el.find('li:not(.has-nested) a').on('click', @onItemActivate)


  onItemActivate: (e) =>
    item = $(e.target).closest('li')
    @deactivateActives()
    @activateItem(item) if item.length


  deactivateActives: ->
    @$el.find('li.active').removeClass('active')
    @$main.find('li.active').removeClass('active')


  activateItem: (item) ->
    item.addClass('active')
    @activateItem(parent) if (parent = item.parents('li')).length


jQuery -> new Adminsimple.Layout.UserNav()

