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

// ナビゲーション部分
  $('.about-btn').click(function(e){
    e.preventDefault();
    var id = $(this).attr('href');
    var position = $(id).offset().top;
    $('html, body').animate({
      'scrollTop': position
    }, 500);
  });

});
