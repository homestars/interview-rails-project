class TasksController < ApplicationController
  def show
    render jsonapi: task
    # Assuming you had a serializer for other resources, you can include
    # related resources by using the `include` parameter.
    # render jsonapi: task, include: [questions: :answers]
  end

  private

  def task
    @task ||= Task.find(params[:id])
  end
end
