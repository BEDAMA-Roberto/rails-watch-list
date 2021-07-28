class ListsController < ApplicationController
  def index
    @list = List.all
  end

  def show
  end

  def new
    @list = List.new
  end
private

  def params_list
    params.require(:list).permit(:name)
  end

  def set_find_list
    @list = List.find(params[:id])
  end
end
=begin class ListsController < ApplicationController
  before_action :set_find_list, only: %i[show edit]

  def index
    @lists = List.all
  end

  def new
    @record = List.new
  end

  def create
    @list = List.new(params_list)
    @list.save
    redirect_to list_path(@list.id)
  end

  def edit; end

  def update
    @list.update(params_list)
    redirect_to list_path(@list.id)
  end

  def show; end

  def destroy
    @list.destroy
    redirect_to list_path(@list)
  end

  private

  def params_list
    params.require(:list).permit(:name)
  end

  def set_find_list
    @list = List.find(params[:id])
  end
end
 =end