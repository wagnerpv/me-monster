$ ->

  audio = null
  tl = new TimelineMax()
  test = true
  # test = false

  seekTo = (pos) ->
    tl.seek(pos)
    audio.currentTime = pos

  splitWords = (selector) ->
    text = $(selector).text()
    $(selector).empty()
    words = text.split ' '

    _.each words, (word) ->
      $('<div></div>').text "#{word}"
      .css('position', 'relative')
      .css('display','inline-block')
      .appendTo($(selector))
      .after(' ')

    $(selector).children()

  splitLetters = (selector) ->
    text = $(selector).text()
    $(selector).empty()

    for letter in text
      do (letter) ->
        $('<div></div>').text "#{letter}"
        .css('position', 'relative')
        .css('display','inline-block')
        .appendTo($(selector))

    $(selector).children()

  $('#play-button').on 'click', ->
    audio = new Audio 'media/me-monster-edit.mp3'

    audio.play() unless test

    # fittext
    $('#me-monster-1').fitText()

    # TweenLite.to( [target object], [duration in seconds], [destination values] )
    # .from(timelineLite, 0.5, {alpha:0}, "-=0.2")
    # tl.staggerFrom(chars, 0.8, {alpha:0, scale:0, y:80, rotationX:180, transformOrigin:"0% 50% -50",  ease:Back.easeOut}, 0.01, "+=0");
    # .staggerFrom( targets:Array, duration:Number, vars:Object, stagger:Number, position:*, onCompleteAll:Function, onCompleteAllParams:Array, onCompleteScope:* ) : *
    tl.set('body', {perspective: 400})


    tl.from('#title', 1, {}, 0)
    tl.to('#title', 1, (
      'font-size': '0.5em'
      bottom: '20px'
      left: '20px'
      position: 'fixed'
      ), "+5")



    tl.staggerFrom(splitWords('#me-monster-1'), 0.5, {alpha:0}, 0.3, 10.178)
    tl.staggerFrom(splitWords('#me-monster-2'), 0.5, {alpha:0}, 0.2, 14.383)

    tl.from('#me-1', 0.5, {alpha:0}, 17.199)
    # harsh shadow, bright glow
    tl.from('#me-3', 0.5, {alpha:0}, 18.307)
    tl.from('#me-4', 0.5, {alpha:0}, 20.163)
    tl.from('#me-5', 0.5, {alpha:0}, 21.206)
    tl.staggerFrom(splitLetters('#me-6'), 0.5, {alpha:0}, 0.05, 23.160)
    # last one comes in and blows up everything else :)
    tl.staggerFrom(splitLetters('#me-7'), 0.5, {alpha:0}, 0.05, 24.958)
    tl.from('#beware', 0.5, {alpha:0}, 30.731)

    tl.to('#scene-1', 1, (
      alpha:0
      visibility: 'collapse'
    ), "+=2")


    tl.staggerFrom(splitWords('#nothing'), 0.5, {alpha:0}, 0.3, 39.371)
    tl.from('#waste-1', 0.5, {alpha:0}, 42.079)
    tl.staggerFrom(splitWords('#waste-2'), 0.5, {alpha:0}, 0.2, 43.606)
    tl.staggerFrom(splitWords('#waste-3'), 0.5, {alpha:0}, 0.3, 48.941)
    tl.staggerFrom(splitWords('#waste-4'), 0.5, {alpha:0}, 0.3, 51.428)
    tl.staggerFrom(splitWords('#waste-5'), 0.5, {alpha:0}, 0.3, 54.7)


    tl.to('#scene-2', 1, {alpha:0}, "+=2")


    tl.from('#waiting', 0.5, {alpha:0}, 71.933)
    tl.from('#yeah-1', 0.5, {alpha:0}, 75.530)
    tl.from('#yeah-2', 0.5, {alpha:0}, 77.327)
    tl.from('#you-me-1', 0.5, {alpha:0}, 77.936)
    tl.from('#you-me-2', 0.5, {alpha:0}, 78.205)
    tl.from('#you-me-3', 0.5, {alpha:0}, 79.784)
    tl.from('#you-me-4', 0.5, {alpha:0}, 80.038)
    tl.from('#you-me-5', 0.5, {alpha:0}, 80.924)
    tl.from('#you-me-6', 0.5, {alpha:0}, 82.068)
    tl.from('#you-me-7', 0.5, {alpha:0}, 82.813)
    tl.from('#now', 0.5, {alpha:0}, 84.993)


    tl.to('#scene-3', 1, {alpha:0}, "+=2")

    # What is it about the human condition people get something out of that? That’s why I have a social fantasy.
    # [go fantasy]
    # I wish I were one of the 12 astronaughts.

     # They must love knowing they can beat anyone’s story, whenever they want.
    tl.from('#moon', 0.5, {alpha:0}, 98.355)
    # 1:43.778 They can sit back  quietly at a dinner party, while some other person, some Me monster doing his thing and let him go,
    # 1:53.841 let him run with the line while you be quiet   …… …    oh, really?
    tl.from('#zzzz', 0.5, {alpha:0}, 117.649)

    # $('#barrage-1').fitText()

    tl.staggerFrom(splitWords('#barrage-1'), 0.5, {alpha:0}, 0.2, 122.512)
    tl.staggerFrom(splitWords('#barrage-2'), 0.5, {alpha:0}, 0.2, 139.446)
    tl.staggerFrom(splitWords('#barrage-3'), 0.5, {alpha:0}, 0.2, 140.492)
    tl.staggerFrom(splitWords('#barrage-4'), 0.5, {alpha:0}, 0.2, 140.977)
    tl.staggerFrom(splitWords('#barrage-5'), 0.5, {alpha:0}, 0.2, 141.675)
    tl.staggerFrom(splitWords('#barrage-6'), 0.5, {alpha:0}, 0.2, 142.650)
    tl.staggerFrom(splitWords('#barrage-7'), 0.5, {alpha:0}, 0.2, 143.466)


    tl.staggerFrom(splitWords('#moon-1'), 0.5, {alpha:0}, 0.3, 150.258)
    # zoom way out and show the response
    tl.to('#scene-4', 0.5, (
      css: (
          transform:'translateZ(-3000px) translateX(1000px)'
        )
      color: '#ccc'
      ), "-=1.2")

    tl.to('#moon-token', 1, {x:45}, "+=0.5")

    tl.to('#scene-4', 1, {alpha:0}, "+=4")

    $('#moon-7').fitText()

    tl.staggerFrom(splitWords('#moon-2'), 0.5, {alpha:0}, 0.2, 159.755)
    tl.staggerFrom(splitWords('#moon-3'), 0.5, {alpha:0}, 0.3, 163.274)
    tl.staggerFrom(splitWords('#moon-4'), 0.5, {alpha:0}, 0.3, 167.094)
    tl.staggerFrom(splitWords('#moon-5'), 0.5, {alpha:0}, 0.3, 173.781)
    tl.staggerFrom(splitWords('#moon-6'), 0.5, {alpha:0}, 0.2, 177.346)
    tl.staggerFrom(splitWords('#moon-7'), 0.5, {alpha:0}, 0.2, 179.66)

    tl.to('#scene-5', 1, {alpha:0}, "+=2")

    if test
      tl.seek 10


  $('#stop-button').on 'click', ->
    audio.pause()
    # tl.seek(0)
    tl.stop()