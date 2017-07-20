class WendasController < ApplicationController
  def index
    @wendas = Wenda.all
  end

  def show
    @wenda = Wenda.find(params[:id])
  end

  def new
    @wenda = Wenda.new
  end

  def create
    @wenda = Wenda.new(allowed_params)
    if @wenda.save
      redirect_to @wenda, notice: "Created wenda."
    else
      render :new
    end
  end

  def edit
    @wenda = Wenda.find(params[:id])
  end

  def update
    @wenda = Wenda.find(params[:id])
    if @wenda.update(allowed_params)
      redirect_to @wenda, notice: "Updated wenda."
    else
      render :edit
    end
  end

  def destroy
    wenda = Wenda.find(params[:id])
    wenda.destroy
  end

  private
  def allowed_params
    params.require(:wenda).permit(:title, :wen, :da, :tag_list)
  end
end
