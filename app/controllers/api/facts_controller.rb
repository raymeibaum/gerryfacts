class Api::FactsController < ApplicationController
  skip_before_action :verify_authenticity_token
  def index
    if params[:number]
      facts = Fact.get_certain_number(params[:number])
    else
      facts = Fact.get_all
    end
    render json: {GerryFacts: facts}
  end

  def show
    fact = Fact.find_by(id: params[:id])
    if fact
      render json: {GerryFact: fact}
    else
      render json: {status: 404, message: "GerryFact not found."}
    end
  end

  def create
    fact = Fact.new(content: params[:content])

    if fact.save
      render json: {status: 201, message: "GerryFact created.", GerryFact: fact}
    else
      render json: {status: 400, message: "Bad request."}
    end

  end

  private

  def fact_params
    params.require(:fact)
      .permit(:content, :number)
  end

end
