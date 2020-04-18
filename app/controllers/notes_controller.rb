class NotesController < ApplicationController
  def create
    @note = Note.create(note_params)
    if @note.save
      flash[:success] = 'Note created'
      redirect_to course_path(@note.course_id)
    else
      flash.now[:warning] = error_message(@note)
      render :new
    end
  end

  def edit
    @note = Note.find(params[:id])
  end

  def update
    @note = Note.find(params[:id])
    if @note.update(note_params)
      respond_to do |format|
        format.json { respond_with_bip @note }
      end
    end
  end

  def destroy
    @note   = Note.find(params[:id])
    @course = @note.course_id
    @note.destroy
    flash[:success] = 'Note erased'
    redirect_to course_path(@course)
  end

  private

  def note_params
    params.require(:note).permit(:course_id, :content)
  end
end
