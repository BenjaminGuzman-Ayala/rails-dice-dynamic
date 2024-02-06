Rails.application.routes.draw do
  get("/dice/:dynamic/:dynamic_num", { :controller => "zebra", :action => "lama" })
  get("/", {controller: "zebra", action: "monkey"})
end
