console.log("avatar updated")
$('.avatar-form > .avatar').replaceWith("<%= j render(partial: 'users/avatar')%>")
<%if resource.avatar.present? %>
$('.avatar-form').find('.remove-avatar').removeClass('hide')
<%else%>
$('.avatar-form').find('.remove-avatar').addClass('hide').find('input').val('false')
<%end%>
