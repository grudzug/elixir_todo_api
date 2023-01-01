defmodule TodoApiWeb.TodoView do
  use TodoApiWeb, :view
  alias TodoApiWeb.TodoView

  def render("index.json", %{todos: todos}) do
    %{data: render_many(todos, TodoView, "todo.json")}
  end

  def render("show.json", %{todo: todo}) do
    %{data: render_one(todo, TodoView, "todo.json")}
  end

  def render("todo.json", %{todo: todo}) do
    %{
      id: todo.id,
      text: todo.text,
      priority: todo.priority,
      done: todo.done
    }
  end

  def render("todo_created.json", %{todo: todo}) do
    %{
      id: todo.id,
      text: todo.text,
      priority: todo.priority,
      done: todo.done,
      inserted_at: todo.inserted_at
    }
  end
end
