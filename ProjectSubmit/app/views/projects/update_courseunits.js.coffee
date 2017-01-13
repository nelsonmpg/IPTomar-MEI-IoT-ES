$("#courseunits_select").empty()
  .append("<%= escape_javascript(render(:partial => @course_units)) %>")