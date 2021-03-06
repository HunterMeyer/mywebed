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
      flash[:success] = 'Course created'
      redirect_to course_path(@course.id)
    else
      flash.now[:warning] = error_message(@course)
      render :new
    end
  end

  def show
    @course = Course.find(params[:id])
    @note   = Note.new
  end

  def edit
    @course = Course.find(params[:id])
  end

  def update
    @course = Course.find(params[:id])
    if @course.update(course_params)
      respond_to do |format|
        format.html { flash[:success] = 'Course updated'
                      redirect_to course_path }
        format.json { respond_with_bip(@course) }
      end
    else
      flash.now[:warning] = error_message(@course)
      render :edit
    end
  end

  def destroy
    Course.find(params[:id]).destroy
    flash[:success] = 'Course erased'
    redirect_to root_path
  end

  private

  def course_params
    params
      .require(:course)
      .permit(:name, :site, :school, :course_id, :url, :description, :started, :favorited)
  end
end
