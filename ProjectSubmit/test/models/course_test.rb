require 'test_helper'

class CourseTest < ActiveSupport::TestCase

  test "should not save course without a name" do
  	course = Course.new
  	assert_not course.save, "Saved the course without a name"
	end

end
