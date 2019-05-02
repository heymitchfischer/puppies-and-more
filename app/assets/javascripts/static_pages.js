$(document).ready(function() {
  var contactForm = document.getElementById('contact-form');
  var $contactButton = $('#contact-button');
  var $token = $('meta[name="csrf-token"]').prop('content');
  var $messageForm = $('#message-form');
  var btn = $('#scroll-button');

  $(window).scroll(function() {
    if ($(window).scrollTop() > 300) {
      btn.addClass('show');
    } else {
      btn.removeClass('show');
    }
  });

  btn.on('click', function(e) {
    e.preventDefault();
    $('html, body').animate({scrollTop:0}, '300');
  });

  if (contactForm !== null) {
    contactForm.addEventListener('submit', function(event) {
      if (contactForm.checkValidity() === false) {
        event.preventDefault();
        event.stopPropagation();
      } else {
        event.preventDefault();
        $messageForm.fadeOut(500, function() {
          $messageForm.html('<h2 class="text-center" style="padding: 40px 0">Your message has been sent!</h2>');
        }).fadeIn(500);
        $.ajax({
          url: "/send_message",
          type: "POST",
          headers: {'X-CSRF-TOKEN': $token},
          data: {
            name: $('#name').prop("value"),
            email: $('#email').prop("value"),
            number: $('#number').prop("value"),
            content: $('#content').prop("value")
          }
        });
      }
      contactForm.classList.add('was-validated');
    }, false);
  }
});
  