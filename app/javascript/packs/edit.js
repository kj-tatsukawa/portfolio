$(function () {
  $('textarea.auto-size')
    .on('change keyup keydown paste cut', function (){
      if ($(this).outerHeight() > this.scrollHeight) {
        $(this).height(1)
      }
      while ($(this).outerHeight() < this.scrollHeight) {
        $(this).height($(this).height() + 1)
      }
    })
})

// $(function () {
//   $(document).on('change keyup keydown paste cut',
//       'textarea.auto-size',function (){
//       if ($(this).outerHeight() > this.scrollHeight) {
//         $(this).height(1)
//       }
//       while ($(this).outerHeight() < this.scrollHeight) {
//         $(this).height($(this).height() + 1)
//       }
//     })
// })

