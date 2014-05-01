class CoursesController < ApplicationController
  def index
    @courses = Course.all
  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.create(course_params)
    if @course.save
      flash[:success] = 'Course Created'
      redirect_to course_path(params[:id] = @course.id)
    else
      flash[:warning] = 'Something is Missing'
      render 'new'
    end
  end

  def show
    @course = Course.find(params[:id])
    @note = Note.new
  end

  def edit
    @course = Course.find(params[:id])
  end

  def update
    @course = Course.find(params[:id])
    if @course.update(course_params)
      flash[:success] = 'Course Updated'
      redirect_to course_path
    else
      flash[:warning] = 'Something is Missing'
      render 'edit'
    end
  end

  def destroy
    Course.find(params[:id]).destroy
    redirect_to root_path
  end

  private
  def course_params
    params.require(:course).permit(:name, :school, :course_id, :url, :description, :started)
  end
end
