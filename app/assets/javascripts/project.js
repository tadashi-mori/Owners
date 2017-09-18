// 背景の動画挿入
$(document).ready(function(){
  $(".player").YTPlayer();
});

$(function() {
  // 「#login-show」要素に対するclickイベントを作成してください
  $('#login-show').click(function(){
    $('#login-modal').fadeIn();
  });

});
