class SekolahsController < ApplicationController
  before_action :authenticate_user!
  before_action :authorize_admin, only: [:new, :create, :edit, :update, :destroy]
  before_action :set_sekolah, only: %i[ show edit update destroy ]

  # GET /sekolahs or /sekolahs.json
  def index
    @sekolahs = Sekolah.all
  end

  # GET /sekolahs/1 or /sekolahs/1.json
  def show
  end

  # GET /sekolahs/new
  def new
    @sekolah = Sekolah.new
  end

  # GET /sekolahs/1/edit
  def edit
  end

  # POST /sekolahs or /sekolahs.json
  def create
    @sekolah = Sekolah.new(sekolah_params)

    respond_to do |format|
      if @sekolah.save
        format.html { redirect_to sekolah_url(@sekolah), notice: "Sekolah was successfully created." }
        format.json { render :show, status: :created, location: @sekolah }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @sekolah.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sekolahs/1 or /sekolahs/1.json
  def update
    respond_to do |format|
      if @sekolah.update(sekolah_params)
        format.html { redirect_to sekolah_url(@sekolah), notice: "Sekolah was successfully updated." }
        format.json { render :show, status: :ok, location: @sekolah }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @sekolah.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sekolahs/1 or /sekolahs/1.json
  def destroy
    @sekolah.destroy!

    respond_to do |format|
      format.html { redirect_to sekolahs_url, notice: "Sekolah was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sekolah
      @sekolah = Sekolah.find(params[:id])
    end

    def authorize_admin
      redirect_to(root_path, alert: 'You are not authorized to perform this action.') unless current_user.admin?
    end

    # Only allow a list of trusted parameters through.
    def sekolah_params
      params.require(:sekolah).permit(:title, :jurusan, :alamat)
    end
end
