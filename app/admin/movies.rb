ActiveAdmin.register Movie do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :title, :descriptation, :igdb_rating, genre_ids: []
  #
  # or
  #
  # permit_params do
  #   permitted = []
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  index do
    
    id_column  
    column :title
    column :descriptation
    column :igdb_rating
    column :genres do |movie|
      movie.genres.map do |g|
        g.name
      end
    end
    actions
  end

  filter :title
  # filter :descriptation
  filter :igdb_rating
  # filter :created_at

  form do |f|
    f.inputs do
    f.input :title
    f.input :descriptation
    f.input :igdb_rating
    f.inputs 'Genres' do
      f.input :genres
    end
    end
    f.actions
  end
# ___________
  
    show do
    attributes_table do
      row :title
      row :descriptation
      row :igdb_rating
      row :created_at
      row :updated_at
      row :genres do |movie|
        movie.genres.map do |g|
          g.name
        end 
      end
    end
    active_admin_comments
  end
end 


