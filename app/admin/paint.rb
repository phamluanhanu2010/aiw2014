ActiveAdmin.register Paint do


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
   permit_params :image,:name,:author,:date,:intro
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted
  # end
  form(:html => { :multipart => true }) do |f|
      f.inputs "New Paint" do
      f.input :image, label:"Profile Picture", :as => :file
      f.input :name
      f.input :author
      f.input :date, :as => :date_picker
      f.input :intro

    end
    f.actions
  end

end
