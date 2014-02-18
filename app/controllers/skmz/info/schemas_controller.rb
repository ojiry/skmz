module Skmz
  module Info
    class SchemasController < ActionController::Base
      layout 'skmz/application'

      def index
        @schema = Skmz::Schema.load
      end
    end
  end
end
