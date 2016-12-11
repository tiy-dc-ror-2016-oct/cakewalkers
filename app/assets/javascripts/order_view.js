(function() {
  window.cakewalkers = window.cakewalkers || {};

  function loadAndRenderOrderStatus () {
    window.cakewalkers.loadOrderStatus().done(function (data){
      $(".client-order").append(data.status);
      $(".client-order-time").append(
        "around " +
        Math.round(data.time_to_go/60) + " minutes"
      );
    });
  }
  loadAndRenderOrderStatus();
}());
