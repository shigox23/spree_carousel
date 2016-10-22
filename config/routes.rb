Spree::Core::Engine.routes.draw do
    namespace :admin do
        resources :carousel
        end
    end
end
