require 'json'

class TodosController < ApplicationController
  def index
  end

  def get_all_todos
    json_file = Rails.root.join('app', 'controllers', 'concerns', 'todos.json')
    data = open(json_file) do |io|
      JSON.load(io)
    end
    render json: { todos: data['todos'] }
  end
end
