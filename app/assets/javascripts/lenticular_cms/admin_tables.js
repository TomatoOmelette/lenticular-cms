var lcmsAdminTables = {
  initialize: function() {
    if($('#lcms-dashboard').length !== 1) return false;
    $('.datatable').DataTable({
    //"sPaginationType": "bootstrap",
    paging: false,
    bFilter: false,
    bInfo: false,
    "aoColumnDefs": [{
      "bSortable": false,
      "aTargets": ["no-sort"],
    }]
  });
  }
}
document.addEventListener("turbolinks:load", function() {
  lcmsAdminTables.initialize();  
});
