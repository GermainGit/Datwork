class MatieresController < ApplicationController
  def index
    @matieres = Matiere.all
  end

  def new
    @matiere = Matiere.new

  end

  def create
    @matiere = Matiere.new(matiere_params)
    @matiere.user_id = current_user.id
    @matiere.save
    redirect_to new_user_session_path
  end

  def show
    @matiere = Matiere.find(params[:id])
  end

  def edit
  end

  def destroy
  end

  def update
  end

    private
    def set_matiere
      @matiere = Matiere.find(params[:id])
    end

    def matiere_params
      params.require(:matiere).permit(:user_id, :name, :color)
    end

end
