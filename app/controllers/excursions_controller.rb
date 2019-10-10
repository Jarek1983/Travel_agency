class ExcursionsController < ApplicationController
  before_action :find_excursion, only: [:show, :edit, :update, :destroy]

  def index
    @excursions = Excursion.all.order("created_at DESC")  	
  end

  def new
  	@excursion = Excursion.new
  end

  def create
  	@excursion = Excursion.new(excursion_params)
      if @excursion.save
        flash[:notice] = "Dodałeś wycieczkę"
        redirect_to excursion_path(@excursion)
      else
        render 'new'
      end
  end

  def edit
  end

  def show
  end

  def update
	  if  @excursion.update(excursion_params)
      flash[:notice] = "Zaktualizowałeś wycieczkę"
	    redirect_to excursion_path(@excursion)
	  else
		  render 'edit'
	  end
  end

  def destroy
    @excursion.destroy
    flash[:alert] = "Usunąłeś wycieczkę"
    redirect_to excursions_path
  end

private

  def excursion_params
    params.require(:excursion).permit(:country,:city,:description,:particulars,:price)
  end

  def find_excursion
    @excursion = Excursion.find(params[:id])
  end

end
