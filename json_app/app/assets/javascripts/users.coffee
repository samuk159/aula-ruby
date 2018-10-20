# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

window.users_poll = (tbody, url) ->
    $.ajax
        url: url
        success: (data) ->
            $(tbody).html ''
            # Update your table
            $.each data, (u, item) ->
                $tr = $('<tr>').append(
                    $('<td>').text(item.name),
                    $('<td>').text(item.birthday),
                    $('<td>').text(item.weight),
                    $('<td>').text(item.bio)
                ).appendTo(tbody)
            dataType: 'json'    