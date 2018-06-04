class DevoirsController < ApplicationController
  def index
    @devoirs = current_user.matieres.devoirs if current_user
  end

  def new
    @devoir = Devoir.new
  end

  def create
    @devoir = Devoir.new(devoir_params)
    @devoir.save
    redirect_to new_user_session_path
  end

  def show
    @devoir = Devoir.find(params[:id])

  end

  def edit
  end

  def destroy
    @devoir = Devoir.find(params[:id])
    @devoir.destroy
    redirect_to matieres_path
  end

  def update
    @devoir = Devoir.update()
  end

    private
    def set_devoir
      @devoir = Devoir.find(params[:id])
    end

    def devoir_params
      params.require(:devoir).permit(:title, :content, :etat, :date, :matiere_id)
    end

end
