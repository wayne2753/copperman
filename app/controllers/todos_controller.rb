class TodosController < ApplicationController
  before_action :find_todo, only: [:edit, :update, :show, :destroy]


  def index
    @todo = Todo.all.sort_by{|i| i.created_at}
  end
  
  def new
    @todo = Todo.new
  end

  def create
    @todo = Todo.new(todo_params)
    if @todo.save
      redirect_to root_path, notice: "新增成功"
    else
      redirect_to new_todo_path
    end
  end

  def edit
  end 

  def show
  end

  def update
    if @todo.update(todo_params)
      redirect_to root_path, notice: "更新成功"
    else
      redirect_to edit_todo_path
    end
  
  end 

  def destroy
    @todo.destroy
    redirect_to root_path, notice: "刪除成功"
  end

  private

  def find_todo
    @todo = Todo.find(params[:id])
  end

  def todo_params
    params.require(:todo).permit(:title, :content, :status, :priority, :start_time, :end_time)
  end 
end