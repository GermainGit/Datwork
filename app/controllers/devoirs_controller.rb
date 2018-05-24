class DevoirsController < ApplicationController
  def index
    @devoirs = current_user.matieres.devoirs if current_user
  end

  def new
    @devoir = Devoir.new
  end

  def create
    @devoir = devoir.new(devoir_params)
    @devoir.user_id = current_user.id
    @devoir.save
    redirect_to new_user_session_path
  end

  def show
    @devoir = current_user.matieres.devoirs.find(params[:id])

  end

  def edit
  end

  def destroy
    @devoir = devoir.find(params[:id])
    @devoir.destroy
    redirect_to matiere_path(params[:id])
  end

  def update
  end

    private
    def set_devoir
      @devoir = Devoir.find(params[:id])
    end

    def devoir_params
      params.require(:devoir).permit(:title, :content, :etat, :date, :devoir_id)
    end

end
