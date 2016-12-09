(function() {
  window.cakewalkers = window.cakewalkers || {};

  function renderLineItems (line_items) {
    $(".client-line-items").html("");

    line_items.forEach(function (line_item) {
      renderLineItem(line_item);
    });
  }

  function renderLineItem (line_item) {
    $(".client-line-items").append(
      line_item.quantity + " - " + line_item.state + " - " +
      (line_item.estimated_time_to_completion_in_seconds / 60)
    );
  }

  function LoadAndRenderLineItems () {
    window.cakewalkers.loadLineItems().done(function (line_items){
      renderLineItems(line_items);
    });
  }

})();
