class BoardsController < ApplicationController
  def index
    @boards = Board.all
  end

  def new
    # インスタンス変数はviewから参照可能
    @board = Board.new
  end

  def create
    board = Board.create(board_params)
    redirect_to board
  end

  def show
    @board = Board.find(params[:id])
  end

  def edit
    @board = Board.find(params[:id])
  end

  def update
    board = Board.find(params[:id])
    board.update(board_params)

    redirect_to board
  end

  def destroy
    board = Board.find(params[:id])
    board.delete

    redirect_to boards_path
  end

  private

  def board_params
    # 許可したパラメータの内容のみに絞り込み
    params.require(:board).permit(:name, :title, :body)
  end
end
