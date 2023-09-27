class SquarerootController < ApplicationController
  def square_root_new

    render(:template => "/math_templates/square_root_new")
  end

  def square_root_results

    @number = params.fetch("number").to_f

    @result = @number ** 0.5

    render(:template => "/math_templates/square_root_results")

  end

end
