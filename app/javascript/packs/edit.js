$(function () {
  $('.content-form-detail')
    .on('change keyup keydown paste cut', function (){
      if ($(this).outerHeight() > this.scrollHeight) {
        $(this).height(1)
      }
      while ($(this).outerHeight() < this.scrollHeight) {
        $(this).height($(this).height() + 1)
      }
    })
})
