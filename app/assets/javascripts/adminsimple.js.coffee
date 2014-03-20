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

  @initialize: (data = {}) ->
    Adminsimple.overrideBootstrapModal()
    Adminsimple.handleRemoteFormsInModals()
    Adminsimple.makeCustomInputs()
    $('body').addClass("#{data.body_class || ''}")


  @overrideBootstrapModal: ->
    $(document).on 'shown.bs.modal', Adminsimple.makeCustomInputs()
    $(document).on 'click', 'a[data-toggle="modal"]', ->
      $('#modal').load $(this).attr('href'), (response, status, xhr) ->
        $('#modal_body').html("<h2>Oh boy</h2><p>Sorry, but there was an error: #{xhr.status} #{xhr.statusText}</p>") if status == 'error'
        setTimeout(Adminsimple.makeCustomInputs, 200)


  @handleRemoteFormsInModals: ->
    $(document)
      .on('ajax:success', '#modal', -> Adminsimple.reload())
      .on 'ajax:error', (e, xhr) ->
        $('#modal_body').html(xhr.responseText)
        Adminsimple.makeCustomInputs()


  @makeCustomInputs: ->


  @reload: ->
    window.location.reload()


jQuery(Adminsimple.initialize)
