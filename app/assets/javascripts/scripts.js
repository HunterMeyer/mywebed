$('#courses').dataTable({
  "sPaginationType": "foundation",
  "sDom": "<'row'<'filter'<'filter-content'<'large-3'f>r>>>t<'row-fluid'<'large-12'p>>"
});
$('#courses_filter').children().children().attr("placeholder", "course, school...");