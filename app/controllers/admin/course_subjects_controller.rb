class Admin::CourseSubjectsController < ApplicationController
  def new
    @course_subject = CourseSubject.new
    @courses = Course.all
    @subjects = Subject.all
  end

  def create
    course_subject = CourseSubject.new course_subject_params
    course_subject.save
    redirect_to admin_course_path(course_subject.course)
  end

  private
  def course_subject_params
    params.require(:course_subject).permit :course_id, :subject_id
  end
end
