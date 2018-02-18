class HtmlBlocksController < ApplicationController
  before_action :set_html_block, only: [:show, :edit, :update, :destroy]

  def index
    @html_blocks = HtmlBlock.all
  end

  def show; end

  def new
    @html_block = HtmlBlock.new
  end

  def edit; end

  def create
    @html_block = HtmlBlock.new(html_block_params)

    respond_to do |format|
      if @html_block.save
        format.html do
          redirect_to html_blocks_url, notice: 'Block was created.'
        end
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @html_block.update(html_block_params)
        format.html do
          redirect_to html_blocks_url, notice: 'HtmlBlock was updated.'
        end
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @html_block.destroy
    respond_to do |format|
      format.html do
        redirect_to html_blocks_url, notice: 'HtmlBlock was destroyed.'
      end
    end
  end

  private

  def set_html_block
    @html_block = HtmlBlock.find(params[:id])
  end

  def html_block_params
    params.require(:html_block).permit(:html_content, :exact_path,
                                       :pattern_path)
  end
end
