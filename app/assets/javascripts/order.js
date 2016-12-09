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
