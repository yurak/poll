class window.Polls
  constructor: (options)->
    @pollId   = options.pollId

    @questionSize = null
    @currentQuestion = 1

    @getQuestions()

    $(document).on 'question.size.handler.call', =>
      @questionSizeHandler()

    $(document).on 'click', '.next', (e)=>
      e.preventDefault()
      $.ajax
        url: "/questions/#{@questionId()}",
        type: "PUT",
        data: {
          question_id: @questionId()
          question_params: @prepareParams(), }
      .done =>
        @getQuestions().done ()-> $(document).trigger("question.size.handler.call")

  questionId: ->
    $("#question_id").val()

  questionSizeHandler: ->
    left = @questionSize - parseInt($(".current_question").text(), 10)
    $(".questions-left").find("span").html(left)

  getQeustionSize: ->
    $.getJSON "/polls/#{@pollId}/question_size"
    .done (data)=>
      @questionSize = data
      $(document).trigger("question.handler.call")

  prepareParams: ->
    arr = []
    $.each $(".answer-data:checked"), (index, item)->
      arr.push($(item).val())
    return arr


  getQuestions: ->
    $.ajax "/polls/#{@pollId}/question"
    .done (data)=>
      @getQeustionSize() if @questionSize == null
      $(".question-block").html(data)
