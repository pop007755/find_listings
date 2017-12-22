Rails.application.routes.draw do
  root to: "listings#index"
  get 'listings/location_search/:city', to: 'listings#location_search', as: :location_search
end
