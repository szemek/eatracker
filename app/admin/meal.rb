ActiveAdmin.register Meal do
  permit_params :name, :size, :consumed_at
end
