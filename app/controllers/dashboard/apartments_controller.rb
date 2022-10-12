# frozen_string_literal: true

module Dashboard
  class ApartmentsController < Dashboard::DashboardController
    before_action :set_apartment, only: %i[show edit update destroy]

    # GET /apartments or /apartments.json
    def index
      @apartments = current_user.apartments
    end

    # GET /apartments/1 or /apartments/1.json
    def show
      @rooms = @apartment.rooms
    end

    # GET /apartments/new
    def new
      @apartment = Apartment.new
    end

    # GET /apartments/1/edit
    def edit; end

    # POST /apartments or /apartments.json
    def create
      @apartment = Apartment.new(apartment_params)
      @apartment.user_id = current_user.id
      respond_to do |format|
        if @apartment.save
          format.html do
            redirect_to dashboard_apartment_url(@apartment), notice: 'Apartment was successfully created.'
          end
          format.json { render :show, status: :created, location: @apartment }
        else
          format.html { render :new, status: :unprocessable_entity }
          format.json { render json: @apartment.errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /apartments/1 or /apartments/1.json
    def update
      respond_to do |format|
        if @apartment.update(apartment_params)
          format.html do
            redirect_to dashboard_apartment_url(@apartment), notice: 'Apartment was successfully updated.'
          end
          format.json { render :show, status: :ok, location: @apartment }
        else
          format.html { render :edit, status: :unprocessable_entity }
          format.json { render json: @apartment.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /apartments/1 or /apartments/1.json
    def destroy
      @apartment.destroy

      respond_to do |format|
        format.html { redirect_to dashboard_apartments_url, notice: 'Apartment was successfully destroyed.' }
        format.json { head :no_content }
      end
    end

    private

    # Use callbacks to share common setup or constraints between actions.
    def set_apartment
      @apartment = Apartment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def apartment_params
      params.require(:apartment).permit(:address, :phone, :latitude, :longitude, :rooms)
    end
  end
end
