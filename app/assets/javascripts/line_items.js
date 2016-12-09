(function (){

  window.cakewalkers = window.cakewalkers || {};
  // Expose to the namespace
  window.cakewalkers.loadLineItems = loadLineItems;

  function loadLineItems() {
    var locArray = window.location.pathname.split("/");
    var orderId = locArray.pop();
    return $.ajax("/orders/"+orderId+"/status", {
      contentType: "application/json",
      dataType: "json"
    });
  }
})();
