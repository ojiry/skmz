module Skmz
  class Column
    include ActiveModel::Model
    attr_accessor :name, :type

    TYPES = [:string, :text, :integer, :float, :decimal, :datetime, :timestamp, :time, :date, :binary, :boolean]
  end
end
