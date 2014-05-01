class NotesController < ApplicationController
  def destroy
    Note.find(params[:id]).destroy
  end
end
