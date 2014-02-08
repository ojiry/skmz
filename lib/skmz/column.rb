module Skmz
  class Column
    include ActiveModel::Model
    attr_accessor :name, :type
  end
end
