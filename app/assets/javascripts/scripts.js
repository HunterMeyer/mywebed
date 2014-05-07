$('#courses').dataTable({
  "sPaginationType": "foundation",
  "sDom": "<'row'<'filter'<'filter-content'<'large-12 medium-12 small-12 columns'f>r>>>t<'row-fluid'<'large-12'p>>",
  "aaSorting": [[2, "desc"]]
});
$('#courses_filter').children().children().attr("placeholder", "course, school...");