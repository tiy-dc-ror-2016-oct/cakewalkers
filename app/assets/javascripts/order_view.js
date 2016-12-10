(function() {
  window.cakewalkers = window.cakewalkers || {};

  function loadAndRenderOrderStatus () {
    window.cakewalkers.loadOrderStatus().done(function (data){
      $(".client-order").append(data.status);
    });
  }
  loadAndRenderOrderStatus();
}());
