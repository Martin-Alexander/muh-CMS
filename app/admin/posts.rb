ActiveAdmin.register Post do
  permit_params :title, :content, :user_id, :post_tags
end
