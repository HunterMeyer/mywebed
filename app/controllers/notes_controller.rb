class NotesController < ApplicationController
  
  def create
    @note = Note.create(note_params)
    if @note.save
      flash[:success] = 'Note Saved'
      redirect_to course_path(params[:id] => @note.course_id)
    else
      render 'new'
    end
  end

  def destroy
    Note.find(params[:id]).destroy
  end

  private
  def note_params
    params.require(:note).permit(:course_id, :content)
  end
end
