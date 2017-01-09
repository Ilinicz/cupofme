$(document).on 'ready turbolinks:load', ->
  return if $('.avatar-form').length == 0

  $avatarForm = $('.avatar-form')
  $avatarInput = $('.avatar-input')
  $avatarRemove = $('.remove-avatar-input')

  if $avatarInput.length > 0
    $avatarForm.on 'change', ($avatarInput, $avatarRemove) ->
      $avatarForm.submit()
      return
