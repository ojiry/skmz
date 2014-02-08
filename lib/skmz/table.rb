module Skmz
  class Table
    include ActiveModel::Model
    attr_accessor :name

    def as_json
      { name: name, columns: columns.as_json }
    end

    def columns
      @columns ||= [].tap do |columns|
        ActiveRecord::Base.connection.columns(name).each do |column|
          columns << Column.new(name: column.name, type: column.type)
        end
      end
    end
  end
end
