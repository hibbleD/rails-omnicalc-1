class RandomController < ApplicationController
  def random_new
    render(:template => "/math_templates/random_new")
  end

  def random_results
    @minimum = params.fetch("user_min").to_f

    @maximum = params.fetch("user_max").to_f

    @result = rand(@minimum..@maximum)


    render(:template => "/math_templates/random_results")
  end
end
