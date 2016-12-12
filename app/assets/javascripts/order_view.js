(function() {
  window.cakewalkers = window.cakewalkers || {};

  function loadAndRenderOrderStatus () {
    window.cakewalkers.loadOrderStatus().done(function (data){
      $(".client-order").html("");
      $(".client-order-time").html("");
      $(".client-order").append(data.status);
      $(".client-order-time").append(
        (moment(data.time_to_go).format('MMMM Do YYYY, h:mm:ss a'))
      );
    });
  }
  if ($(".client-order").length > 0) {
    loadAndRenderOrderStatus();

    // Every 5 seconds load new appointments
    window.setInterval(loadAndRenderOrderStatus, 5 * 1000);
  }

}());
