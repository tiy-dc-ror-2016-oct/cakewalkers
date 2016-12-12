(function() {
  'use strict';

  $(document).on("ready", function() {
    var $form = $('#new_order');
    $form.on("submit", function(event) {
      event.preventDefault();

      Stripe.card.createToken({
        number: $('.card-number').val(),
        cvc: $('.card-cvc').val(),
        exp_month: $('.card-expiry-month').val(),
        exp_year: $('.card-expiry-year').val()
      }, stripeResponseHandler);

      Stripe.setPublishableKey();


    });
  });

  function stripeResponseHandler(status, response) {

    // Grab the form:
    var $form = $('#new_order');

    if (response.error) { // Problem!

      // Show the errors on the form
      $form.find('.payment-errors').text(response.error.message);
      $form.find('.button').prop('disabled', false); // Re-enable submission

    } else { // Token was created!

      // Get the token ID:
      var token = response.id;

      // Insert the token into the form so it gets submitted to the server:
      $form.append($('<input type="hidden" name="stripeToken" />').val(token));

      // Submit the form:
      $form.get(0).submit();

    }

  }
}());
