$ ->
  $newStoryRow = $('.issues.index .new-story')
  $newButton = $('.issues.index .new')
  $newButton.on 'click', (event) ->
    event.preventDefault()
    $newStoryRow.removeClass('new-story').addClass('story')
    $newStoryRow.find('.day').addClass 'highlight', 500
    $newStoryRow.on 'mouseenter', '.day', (event) ->
      $(event.target).addClass('dev').removeClass('highlight')
    $newStoryRow.on 'mouseleave', '.day', (event) ->
      $(event.target).removeClass('dev').addClass('highlight')

  $hideWeekends = $('.index #hide-weekends')
  $hideWeekends.on 'click', (event) ->
    $('.weekend').toggle();