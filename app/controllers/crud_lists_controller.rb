class CrudListsController < ApplicationController
  # load_and_authorize_resource
  # # before_action :authenticate_user!
  # before_action :authorize_admin, only: [:new, :create, :edit, :update, :destroy]

  def index
    @crud_lists = CrudList.includes(:sekolah).all
    @sekolahs = Sekolah.all
    authorize! :read, CrudList
  end

  def show
    @crud_list = CrudList.find(params[:id])
    authorize! :read, @crud_list
  end

  def new
    @crud_list = CrudList.new
    @sekolahs = Sekolah.all
    authorize! :create, @crud_list
  end

  def edit
    @crud_list = CrudList.find(params[:id])
    @sekolahs = Sekolah.all
    authorize! :update, @crud_list
  end

  def create
    @crud_list = CrudList.new(crud_list_params)
    authorize! :create, @crud_list

    if @crud_list.save
      redirect_to @crud_list, notice: 'Crud list was successfully created.'
    else
      render :new
    end
  end

  def update
    @crud_list = CrudList.find(params[:id])
    authorize! :update, @crud_list

    if @crud_list.update(crud_list_params)
      redirect_to @crud_list, notice: 'Crud list was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @crud_list = CrudList.find(params[:id])
    authorize! :destroy, @crud_list
    @crud_list.destroy
    redirect_to crud_lists_url, notice: 'Crud list was successfully destroyed.'
  end

  private

  def crud_list_params
    params.require(:crud_list).permit(:first_name, :last_name, :email, :sekolah_id, :jurusan_id)
  end
end
