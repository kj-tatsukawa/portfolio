$(function() {
  $('.page-contents').blur(function() {
    let pageIndex = $('.page-index').val()
    let pageContent = $('.page-content').val()

    let pageContents = '<h3>' + pageIndex + '</h3>' + '<p>' + pageContent + '</p>'

    // $('.jquery-test').text(pageContents)
    $('.jquery-test').val(pageContents)
  })
})