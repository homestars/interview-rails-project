require 'rails_helper'

describe TasksController, type: :controller do
  let!(:task) { Task.create }

  it 'should get show' do
    get :show, params: { id: task.id }
    expect(JSON.parse(response.body)["data"]["id"].to_i).to eq(task.id)
  end
end
