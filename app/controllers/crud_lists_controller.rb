class CrudListsController < ApplicationController
  before_action :set_crud_list, only: %i[ show edit update destroy ]

  # GET /crud_lists or /crud_lists.json
  def index
    @crud_lists = CrudList.all
  end

  # GET /crud_lists/1 or /crud_lists/1.json
  def show
  end

  # GET /crud_lists/new
  def new
    @crud_list = CrudList.new
  end

  # GET /crud_lists/1/edit
  def edit
  end

  # POST /crud_lists or /crud_lists.json
  def create
    @crud_list = CrudList.new(crud_list_params)

    respond_to do |format|
      if @crud_list.save
        format.html { redirect_to crud_list_url(@crud_list), notice: "Crud list was successfully created." }
        format.json { render :show, status: :created, location: @crud_list }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @crud_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /crud_lists/1 or /crud_lists/1.json
  def update
    respond_to do |format|
      if @crud_list.update(crud_list_params)
        format.html { redirect_to crud_list_url(@crud_list), notice: "Crud list was successfully updated." }
        format.json { render :show, status: :ok, location: @crud_list }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @crud_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /crud_lists/1 or /crud_lists/1.json
  def destroy
    @crud_list.destroy!

    respond_to do |format|
      format.html { redirect_to crud_lists_url, notice: "Crud list was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_crud_list
      @crud_list = CrudList.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def crud_list_params
      params.require(:crud_list).permit(:first_name, :last_name, :email, :phone, :twitter)
    end
end
