# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
ready = ->
  $('.js-capsule')
    .on 'cocoon:before-insert', (e, picture_to_be_added) ->
      console.log('before insert')
      picture_to_be_added.fadeIn('slow')
    .on 'cocoon:after-insert', (e, added_picture) ->
      console.log('after insert')
      added_picture.css("background","red")
    .on 'cocoon:before-remove', (e, picture_to_be_removed) ->
      console.log('before remove')
      picture_to_be_removed.fadeOut('slow')
    .on 'cocoon:after-remove', (e, removed_picture) ->
      console.log('after remove')
  $('.owl-carousel').owlCarousel({
    nav: true,
    dots: true,
      })
  Dropzone.options.capsuleForm = {
    autoProcessQueue: false,
    uploadMultiple: true,
    parallelUploads: 100,
    maxFiles: 100,
    paramName: -> 'capsule[pictures_attributes][][image]',
    addRemoveLinks: true,
    init: ->
      capsuleForm = @
      $(@.element).find('input[type=submit]').on 'click', (e) ->
        e.preventDefault()
        e.stopPropagation()
        capsuleForm.processQueue()
      @.on 'sendingmultiple', ->
      @.on 'successmultiple', ->
      @.on 'errormultiple', ->
  }
  $('.date').datetimepicker({
      locale: 'ja',
      format : 'YYYY-MM-DD HH:mm:ss'
    })

$(ready)
$(document).on 'turbolinks:load', ready
