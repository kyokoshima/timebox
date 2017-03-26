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
    clickable: '#dropzone-previews',
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
  $('.calendar').datepicker()
    .on 'changeDate', (e)->
      $('#capsule_dig_date').val moment(e.date).format("YYYY年MM月DD日 HH:mm:ss dddd")
      
  year = noUiSlider.create($('#year').get(0), {
    start: [1],
    range: {
      min: 1,
      '10%': 5,
      '20%': 10,
      '40%': 20,
      '60%': 30,
      max: 50
    },
    snap: true,
    pips: {
      mode: 'range',
      values: [1, 5, 10, 20, 30, 50],
      density: 5
    },
    orientation: 'vertical',
    direction: 'rtl'
  })
  year.on 'change', ->
    console.log @.get()
  year.on 'update', ->
    console.log 'update'
    val = +@.get()
    date = $('.calendar').datepicker('getDate')
    unless date
      date = new Date()

    date.setFullYear(new Date().getFullYear() + val)
    $('.calendar').datepicker('update', date)
$(document).on 'turbolinks:load', ready
