class BlocksController < ApplicationController

  before_action :set_block, only: [:show, :edit, :update, :destroy]

  def index
    @blocks = Block.all
  end

  def show
  end

  def new
    @block = Block.new
  end

  def create
    @block = Block.new(block_params)
    if @block.save
      redirect_to blocks_path
    else
      render 'new'
    end
  end

  def edit
  end
 
  def update
    if @block.update(block_params)
      redirect_to blocks_path
    else
      render 'edit'
    end
  end

  def destroy
    @block.destroy
    redirect_to blocks_path
  end

  private def block_params
    params[:block].permit(:name, :memo)
  end

  def set_block
    @block = Block.find(params[:id])
  end
end
