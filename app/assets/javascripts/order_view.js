(function() {
  window.cakewalkers = window.cakewalkers || {};

  function loadAndRenderOrderStatus () {
    window.cakewalkers.loadOrderStatus().done(function (data){
      $(".client-order").append(data.status);
      $(".client-order-time").append(data.time_to_go);
    });
  }
  loadAndRenderOrderStatus();
}());
