class BlocksController < ApplicationController

  before_action :set_block, only: [:show, :edit, :update, :destroy]

  def index
    @blocks = Block.all
  end

  def collection
    if params[:q].blank?
      @blocks = Block.all
    else
      aaa = params[:q]
      logger.debug aaa.inspect
      @blocks = Block.tagged_with( aaa )
    end
  end

  def show
  end

  def new
    @block = Block.new
  end

  def create
    @block = Block.new(block_params)
    nm = Natto::MeCab.new("-d /usr/local/lib/mecab/dic/mecab-ipadic-neologd/")
    nm.parse(@block.name) do |n|
      @block.tag_list.add(n.surface.to_s)
    end
    if logged_in?
      @block.user_id = session[:user_id]
    end
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
      nm = Natto::MeCab.new("-d /usr/local/lib/mecab/dic/mecab-ipadic-neologd/")
      nm.parse(@block.name) do |n|
        @block.tag_list.add(n.surface.to_s)
      end
      @block.save
#      logger.debug '---------------------------------------'
#      logger.debug @block.tag_list.inspect
#      logger.debug '---------------------------------------'
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
    params[:block].permit(:name, :memo, :pic, :pic_cache, :tag_list) 
  end

  def set_block
    @block = Block.find(params[:id])
  end
end
