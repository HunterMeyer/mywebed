module CoursesHelper

  def school_name_and_site(course)
    course.site.present? ? "#{course.school} (#{course.site})" : course.school
  end

end
