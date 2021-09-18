class BoardsController < ApplicationController
  def index
  end

  def new
    # インスタンス変数はviewから参照可能
    @board = Board.new
  end
end
