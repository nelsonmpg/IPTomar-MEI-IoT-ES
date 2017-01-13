jQuery(function() {
  var course_units;
  course_units = $('#project_course_unit_id').html();
  console.log(course_units);
  return $('#project_course_id').change(function() {
    var course, options;
    course = $('#project_course_id :selected').text();
    options = $(course_units).filter("optgroup[label=" + course + "]").html();
    console.log(options);
    if (options) {
      return $('#project_course_unit_id').html(options);
    } else {
      return $('#project_course_unit_id').empty();
    }
  });
});