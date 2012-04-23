class TeasController < ApplicationController
  # GET /teas
  # GET /teas.json
  def index
      @teas = Tea.search(params[:search])
      redirect_to(:back)
 end

def search 
  @teas = Tea.search(params[:search])
end
        #@teas = Tea.search(params[:search]) 
  # GET /teas/1
  # GET /teas/1.json
    def show
    @teas = Tea.search(params[:search])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tea }
    end
  end

 
  # DELETE /teas/1
  # DELETE /teas/1.json
  def destroy
    @tea = Tea.find(params[:id])
    @tea.destroy

    respond_to do |format|
      format.html { redirect_to teas_url }
      format.json { head :no_content }
    end
  end
  

end