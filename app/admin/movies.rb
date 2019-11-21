ActiveAdmin.register Movie do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :title, :description, :imdb_rating, :cover, :bg_cover, genre_ids: []
  #
  # or
  #
  # permit_params do
  #   permitted = []
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
   

 


  index do
    
     
    column :title
    column :description
    column :imdb_rating
    column :genres do |movie|
      movie.genres.map do |g|
        g.name
      end
    end
    actions
  end

  filter :title
  # filter :descriptation
  filter :imdb_rating
  # filter :created_at

  form do |f|
    f.inputs do
    f.input :title
    f.input :description
    f.input :imdb_rating
    f.inputs 'Genres' do
      f.input :genres
    end
    f.input :cover, as: :file
    f.input :bg_cover, as: :file
    end
    f.actions
  end
# ___________
  
    show do
    attributes_table do
      row :title
      row :description
      row :imdb_rating
      row :created_at
      row :updated_at
      row :genres do |movie|
        movie.genres.map do |g|
          g.name
        end 
      end
      row :cover do |movie|
        image_tag(movie.cover, height: 150)
      end
      row :bg_cover do |movie|
        image_tag(movie.bg_cover, width: 500, height: 100 )
      end
    end
  
  end
end 


