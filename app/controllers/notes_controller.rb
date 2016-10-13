class NotesController < ApplicationController
  def index
    notes = NoteFetcher.all
    note = Note.new

    render :index, locals: { notes: notes, note: note }
  end

  def create
    note = Note.create(note_params)

    redirect_to(:back)
  end

  private

  def note_params
    params.require(:note).permit(:body)
  end
end
