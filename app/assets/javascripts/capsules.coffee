# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

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
$('.date').datetimepicker({
    locale: 'ja',
    format : 'YYYY-MM-DD HH:mm:ss'
  });