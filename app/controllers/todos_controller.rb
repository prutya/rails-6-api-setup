class TodosController < ApplicationController
  def create
    @todo = Todo.create(params_create)
  end

  def index
    @todos = Todo.all
  end

  def show
    @todo = Todo.find(params[:id])
  end

  def destroy
    Todo.destroy(params[:id])
  end

  private

  def params_create
    params.require(:todo).permit(:content)
  end
end
