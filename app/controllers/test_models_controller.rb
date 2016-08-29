class TestModelsController < ApplicationController

  def show
    @test_model = TestModel.find(params[:id])
    puts @test_model.inspect
    render 'test_models/show.jbuilder'
  end

end
