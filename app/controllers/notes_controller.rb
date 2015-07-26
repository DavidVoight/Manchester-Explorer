class NotesController < ApplicationController
  before_action :require_login

  def index
    @notes = Note.where(user_id: current_user.id)
  end

  def new
    @note = Note.new
  end

  def create
    @note = Note.new(note_params)
    @note.user_id = current_user.id

    if @note.save
      flash[:notice] = ""
      redirect_to user_notes_path(current_user)
    else
      flash[:notice] = @note.errors.full_messages.join(" ")
      render 'new'
    end
  end

  def show
    @note.user = current_user
    if current_user == @note.user
      @note = Note.find(params[:id])
    end
  end

  def edit
    @note = Note.find(params[:id])
    if current_user == @note.user
      if @note.edit(note_params)
        flash[:notice] = 'Note edited'
        redirect_to investment_note_path(params[:id])
      end
    end
  end

  def destroy
    @user = current_user
    @note = Note.find(params[:id])
    if current_user == @note.user
      @note.destroy
      flash[:notice] = "Note deleted"
      redirect_to notes_path
    end
  end

  protected

  def note_params
    params.require(:note).permit(
      :title,
      :ticker,
      :description)
  end

  private

  def require_login
    unless user_signed_in?
      flash[:error] = "You must be signed in to do that"
      redirect_to new_user_session_path
    end
  end
end
