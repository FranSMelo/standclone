class VehicleImagesController < ApplicationController
  before_action :set_vehicle_image, only: %i[ show edit update destroy ]

  # GET /vehicle_images or /vehicle_images.json
  def index
    @vehicle_images = VehicleImage.all
  end

  # GET /vehicle_images/1 or /vehicle_images/1.json
  def show
  end

  # GET /vehicle_images/new
  def new
    @vehicle_image = VehicleImage.new
  end

  # GET /vehicle_images/1/edit
  def edit
  end

  # POST /vehicle_images or /vehicle_images.json
  def create
    @vehicle_image = VehicleImage.new(vehicle_image_params)

    respond_to do |format|
      if @vehicle_image.save
        format.html { redirect_to @vehicle_image, notice: "Vehicle image was successfully created." }
        format.json { render :show, status: :created, location: @vehicle_image }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @vehicle_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vehicle_images/1 or /vehicle_images/1.json
  def update
    respond_to do |format|
      if @vehicle_image.update(vehicle_image_params)
        format.html { redirect_to @vehicle_image, notice: "Vehicle image was successfully updated." }
        format.json { render :show, status: :ok, location: @vehicle_image }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @vehicle_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vehicle_images/1 or /vehicle_images/1.json
  def destroy
    @vehicle_image.destroy!

    respond_to do |format|
      format.html { redirect_to vehicle_images_path, status: :see_other, notice: "Vehicle image was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vehicle_image
      @vehicle_image = VehicleImage.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def vehicle_image_params
      params.expect(vehicle_image: [ :vehicle_id, :image_path, :primary_image, :position ])
    end
end
