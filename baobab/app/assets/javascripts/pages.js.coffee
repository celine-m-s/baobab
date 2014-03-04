# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

(($) ->
  $ ->
    
    # Focus state for append/prepend inputs
    $(".input-prepend, .input-append").on("focus", "input", ->
      $(this).closest(".control-group, form").addClass "focus"
      return
    ).on "blur", "input", ->
      $(this).closest(".control-group, form").removeClass "focus"
      return

    $(window).resize ->
      $(".header-16-sub").css "height", $(this).height() + "px"
      return

    ((el) ->
      $(window).resize(->
        el.data "scrollPos", el.offset().top - $(window).height() + el.outerHeight() - parseInt(el.css("padding-bottom"), 10) - 200  unless el.hasClass("ani-processed")
        return
      ).scroll ->
        el.addClass "ani-processed"  if $(window).scrollTop() >= el.data("scrollPos")  unless el.hasClass("ani-processed")
        return

      return
    ) $(".content-7")
    $(window).resize().scroll()
    return

  $(window).load ->
    $("html").addClass "loaded"
    $(window).resize().scroll()
    return

  return
) jQuery