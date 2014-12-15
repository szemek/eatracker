ActiveAdmin.register Meal do
  permit_params :name, :energy, :consumed_at
end
