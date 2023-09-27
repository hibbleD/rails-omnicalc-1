Rails.application.routes.draw do
  get("/square/new", {:controller => "square", :action => "square_new"})

  get("/square/results", {:controller => "square", :action => "square_results"})


  get("/square_root/new", {:controller => "squareroot", :action => "square_root_new"})

  get("/square_root/results", {:controller => "squareroot", :action => "square_root_results"})


  get("/payment/new", {:controller => "payment", :action => "payment_new"})

  get("/payment/results", {:controller => "payment", :action => "payment_results"})


  get("/random/new", {:controller => "random", :action => "random_new"})

  get("/random/results", {:controller => "random", :action => "random_results"})


  

end
