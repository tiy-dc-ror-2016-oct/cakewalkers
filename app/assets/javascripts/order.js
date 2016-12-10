(function() {
  window.cakewalkers = window.cakewalkers || {};

  window.cakewalkers.loadOrderStatus = loadOrderStatus;

  function loadOrderStatus() {
    var locArray = window.location.pathname.split("/");
    var orderId = locArray.pop();
    return $.ajax("/orders/"+orderId+"/status", {
      contentType: "application/json",
      dataType: "json"
    });
  }

}());

$(document).ready(function(){
    $('#check-address').click(function(){
        if($('#check-address').is(':checked')){
            $('#shipping_street').val($('#billing_street').val());
            $('#shipping_city').val($('#billing_city').val());
            $('#shipping_zip').val($('#billing_zip').val());
            $('#shipping_state').val($('#billing_state').val());
        } else {
            //Clear on uncheck
            $('#shipping_street').val("");
            $('#shipping_city').val("");
            $('#shipping_zip').val("");
            $('#shipping_state').val("");
        };

    });
});
