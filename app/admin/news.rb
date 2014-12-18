ActiveAdmin.register News do


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :image,:title,:author,:date,:description,:content,:imagename
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end

  form(:html => { :multipart => true }) do |f|
    f.inputs "Create News" do
      f.input :image, label:"Profile Picture", :as => :file
      f.input :imagename,label:"Tiêu đề ảnh"
      f.input :title,label:"Tiêu đề"
      f.input :description,label:"Mô tả"
      f.input :author,label:"Người đăng"
      f.input :content,label:"Nội dung", :input_html => { class: "ckeditor" }

    end
    f.actions
  end

end