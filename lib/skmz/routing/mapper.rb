module ActionDispatch::Routing
  class Mapper
    def mount_skmz
      namespace :skmz do
        namespace :info do
          resources :schemas, only: [:index]
        end
      end
    end
  end
end
