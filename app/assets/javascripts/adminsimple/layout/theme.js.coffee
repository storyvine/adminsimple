class Adminsimple.Layout.Theme

  constructor: ->
    @initialize()
    @addListeners()


  initialize: ->
    @document = $(document)
    @html = $('html')
    @has_storage = typeof Storage != undefined
    @changed()


# PUBLIC #

  get: ->
    return localStorage.theme if @has_storage and localStorage.theme
    @html.attr('id').replace /adminsimple_/g, ''


  set: (theme) ->
    @html.attr 'id', "adminsimple_#{theme}"
    localStorage.theme = theme if @has_storage


  reset: ->
    localStorage.removeItem(theme) if @has_storage and localStorage.theme


  dispose: ->
    @removeListeners()


# PROTECTED #

  userInitiatedSetTheme: (e) ->
    @set $(e.target).val()


  changed: (e) ->
    @setChecked() if (/settings/g).test Adminsimple.currentControllerAndAction()


  setChecked: ->
    inputs = $('#theme_controls input')
    theme = @get()
    selected = null
    for input in inputs
      $input = $(input)
      selected = $input if $input.val() is theme
    selected.attr('checked', true) if selected


  addListeners: ->
    @document.on 'click', '#theme_controls input:radio', => @userInitiatedSetTheme arguments...


  removeListeners: ->
    @document.off 'click', '#theme_controls input:radio'


jQuery -> new Adminsimple.Layout.Theme()

