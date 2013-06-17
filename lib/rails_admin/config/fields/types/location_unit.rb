require 'rails_admin/config/fields/base'

module RailsAdmin
  module Config
    module Fields
      module Types
        class LocationUnit < RailsAdmin::Config::Fields::Base
          RailsAdmin::Config::Fields::Types::register(self)

          def parse_input(params)
            params[name] = params[:area]    ||
                           params[:city]    || 
                           params[:province]
          end
        end
      end
    end
  end
end
