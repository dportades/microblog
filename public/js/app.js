$(document).ready(function(){

  $(".sign_in_btn").click(function(){
    $(".sign_in_box").toggle();
  });

  $(".text_btn").click(function(){
    $(".post_box").show();
    $(".media_box").hide();

  });

  $(".media_btn").click(function(){
    $(".media_box").show();
    $(".post_box").hide();
  });

  $(".submit_post").click(function(){
    $(this).animate({
        height: ($(this).height()==40) ? 100 : 40
    });
  });
});

