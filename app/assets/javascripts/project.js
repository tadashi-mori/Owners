// 背景の動画挿入
$(document).ready(function(){
  $(".player").YTPlayer();
});

// modal-login部分
$(function() {
  $('#login-show').click(function(){
    $('#login-modal').fadeIn();
  });

// modal-signup部分
$('.signup-show').click(function(){
    $('#signup-modal').fadeIn();
  });

// modal取り消し部分
 $('.close-modal').click(function(){
    $('#login-modal').fadeOut();
    $('#signup-modal').fadeOut();
  });

});
