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


$(function() {
  // limits the number of categories
  $('#presentation-slides').on('cocoon:after-insert', function() {
    check_to_hide_or_show_add_link();
  });

  $('#presentation-slides').on('cocoon:after-remove', function() {
    check_to_hide_or_show_add_link();
  });

  check_to_hide_or_show_add_link();

  function check_to_hide_or_show_add_link() {
    if ($('#presentation-slides .nested-fields').length == 2) {
      $('#add-slides a').hide();
    } else {
      $('#add-slides a').show();
    }
  }
});
