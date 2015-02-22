class window.Polls
  constructor: (options)->
    @pollId           = options.pollId
    @questionGeneral  = $(options.questionGeneral)
    @nextButton       = $(options.nextButton)
    @questionComplete = $(options.questionsComplete)

    @nextButton.click (e)=>
      e.preventDefault()
      @postQuestion()

    @getQuestions()

  postQuestion: =>
    $.ajax
      url: "/questions/#{@questionId()}",
      type: "PUT",
      data: {
        question_id: @questionId()
        question_params: @prepareParams(), }
    .done ()=>
      @getQuestions()

  getQuestions: ->
    $.getJSON "/polls/#{@pollId}/question"
    .done (data)=>
      if data.poll_status == "complete"
        $(".questions-block,.navigation-block").hide()
        $('.complete').html(@questionComplete.tmpl(data))
      else
        $(".questions-block").html(@questionGeneral.tmpl(data))

  questionId: ->
    $("#question_id").val()

  prepareParams: ->
    _.reduce $(".answer-data:checked"), (arr, item)->
      arr.push($(item).val())
      arr
    , []