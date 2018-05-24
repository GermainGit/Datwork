class MatieresController < ApplicationController
  def index
    @matieres = current_user.matieres if current_user
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
    @matiere = current_user.matieres.find(params[:id])
    @devoirs = @matiere.devoirs
  end

  def edit
  end

  def destroy
    @matiere = Matiere.find(params[:id])
    @matiere.destroy
    redirect_to matieres_path
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

