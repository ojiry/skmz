module Skmz
  class SchemasController < ActionController::Base
    def index
      @schema = Skmz::Schema.load
    end
  end
end
