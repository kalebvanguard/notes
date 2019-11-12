class NotesController < ApplicationController
  def index
    #This is html -- All notes
    @notes = Note.all
    #ender :index
  end

  def show
    #html -- a specific note
    @note = Note.find(params[:id])
    #render :show
  end

  def new
    #html -- a form for a new note
    @note = Note.new
    #render :new
  end

  def create 
    # a POST
    @note = Post.new(post_params)
    if @note.save
      redirect_to note_path(@note.id)
    else
      render :new
    end
  end
 
  def edit
    #html for existing note
    @note = Note.find(params [:id])
    #render :edit
  end 

  def update
    @note = Note.find(params [:id])
    
    if redirect_to note_path(@note.id) 
      
    else
      render :edit
    end
  end

  def destroy
    Note.find(params[:id]).destroy
    redirect_to notes_path
  end

  private note_params
    params.require(:note).permit(:title, :body, :author)
  def

  end

end
