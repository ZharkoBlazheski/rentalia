# frozen_string_literal: true

module Dashboard
  class RoomsController < Dashboard::DashboardController
    before_action :set_room, only: %i[show edit update destroy]

    # GET /rooms or /rooms.json
    def index
      @rooms = Room.all
    end

    # GET /rooms/1 or /rooms/1.json
    def show; end

    # GET /rooms/new
    def new
      @room = Room.new
    end

    # GET /rooms/1/edit
    def edit; end

    # POST /rooms or /rooms.json
    def create
      @room = Room.new(room_params)

      respond_to do |format|
        if @room.save
          format.html { redirect_to root_path, notice: 'Room was successfully created.' }
          format.json { render :show, status: :created, location: @room }
        else
          format.html { render :new, status: :unprocessable_entity }
          format.json { render json: @room.errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /rooms/1 or /rooms/1.json
    def update
      respond_to do |format|
        if @room.update(room_params)
          format.html { redirect_to root_path, notice: 'Room was successfully updated.' }
          format.json { render :show, status: :ok, location: @room }
        else
          format.html { render :edit, status: :unprocessable_entity }
          format.json { render json: @room.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /rooms/1 or /rooms/1.json
    def destroy
      @room.destroy

      respond_to do |format|
        format.html { redirect_to dashboard_rooms_url, notice: 'Room was successfully destroyed.' }
        format.json { head :no_content }
      end
    end

    private

    # Use callbacks to share common setup or constraints between actions.
    def set_room
      @room = Room.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def room_params
      params.require(:room).permit(:bed_capacity, :breakfast, :parking, :tv, :books, :balcony, :yard, :pet_friendly,
                                   :hair_dryer, :warm_water, :smoke_alarm, :smoking_allowed, :refrigirator, :microwave,
                                   :security_camera, :room_number, :other)
    end
  end
end
