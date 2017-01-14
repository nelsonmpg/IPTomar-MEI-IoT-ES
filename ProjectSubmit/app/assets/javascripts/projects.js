jQuery(function() {
  var course_units;
  course_units = $('#project_course_unit_id').html();
  console.log(course_units);
  return $('#project_courses_course_id').change(function() {
    var course, options;
    course = $('#project_courses_course_id :selected').text();
    escaped_course = course.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1');
    options = $(course_units).filter("optgroup[label=" + escaped_course + "]").html();
    console.log(options);
    if (options) {
      return $('#project_course_unit_id').html(options);
    } else {
      return $('#project_course_unit_id').empty();
    }
  });
});