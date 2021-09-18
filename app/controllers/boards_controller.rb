class BoardsController < ApplicationController
  def index
  end

  def new
    # インスタンス変数はviewから参照可能
    @board = Board.new
  end

  def create
    Board.create(board_params)
    binding.pry
  end

  private

  def board_params
    # 許可したパラメータの内容のみに絞り込み
    params.require(:board).permit(:name, :title, :body)
  end
end
