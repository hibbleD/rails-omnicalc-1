class PaymentController < ApplicationController
  def payment_new

    render(:template => "/math_templates/payment_new")
  end

  def payment_results
    @apr = params.fetch("apr").to_f.round(5)

    @years = params.fetch("years").to_f

    @pv = params.fetch("pv").to_f

    @numerator = ((@apr/12)/ 100) * @pv

    @denominator = 1 - (1 + ((@apr/12)/ 100)) ** -(@years*12)

    @result = @numerator/@denominator
    
    render(:template => "/math_templates/payment_results")
  end

end
