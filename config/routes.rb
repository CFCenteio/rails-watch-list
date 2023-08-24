Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :movies, only: %i[index show]
  resources :lists, only: %i[index show new create] do
    resources :bookmarks, only: %i[new create]
  end
  resources :bookmarks, only: [:destroy]
end

# <div class="row justify-content-center">
# <div class="col-4">
#   <h1>Add a bookmark</h1>

#   <%= simple_form_for [@list, @bookmark] do |f| %>
#     <%= f.input :comment %>
#     <%= f.association :movie %>
#     <%= f.submit %>
#   <% end %>
# </div>
# </div>
