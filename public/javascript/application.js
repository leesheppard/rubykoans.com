function iPhone() {
  return (navigator.userAgent.match(/iPhone/i)) || (navigator.userAgent.match(/iPod/i));
}

(function($){
  $.fn.scrollToAnchor = function() {
    return this.click(function(e) {
      if(iPhone()) { return; }

      e.preventDefault();
      var targetSection = $($(this).attr('href'));
      var scrollTo      = targetSection.offset().top;
      $('html,body').animate({scrollTop: scrollTo});
    });
  };


  $(function(){
    $('#sidebar ol a').scrollToAnchor();

    $('.email_address').each(function() {
      var address   = $(this).text().replace(' [at] ', '@').replace(' [dot] ', '.');
      var emailLink = '<a href="mailto:' + address + '">' + address + '</a>';

      $(this).replaceWith(emailLink);
    });
  });
})(jQuery);
