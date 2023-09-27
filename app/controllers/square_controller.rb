class SquareController < ApplicationController
  def square_new

    render(:template => "/math_templates/square_new")
  end

  def square_results
    @number = params.fetch("number").to_f

    @result = @number * @number

    render(:template => "/math_templates/square_results")
  end

end
