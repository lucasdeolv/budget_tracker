class StatementsController < ApplicationController
  before_action :statement_finder, only: %i[edit update destroy]
  def index
    @statements = Statement.where(id: 4)
  end

  def new
    @statement = Statement.new
  end

  def create
    @statement = Statement.new(statement_params)
    @statement.user_id = current_user.id
    @statement.save
    redirect_to statements_path
  end

  def edit; end

  def update
    @statement.update(statement_params)
    redirect_to statements_path
  end

  def destroy
    @statement.destroy
    redirect_to statements_path
  end

  private

  def statement_finder
    @statement = Statement.find(params[:id])
  end

  def statement_params
    params.require(:statement).permit(:description, :value, :category_id, :date)
  end
end
