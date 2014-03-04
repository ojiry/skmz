module Skmz
  class Schema
    include ActiveModel::Model
    attr_accessor :tables

    class << self
      def load
        schema = Skmz::Schema.new(tables: [])
        table_names.each do |name|
          schema.tables << Skmz::Table.new(name: name)
        end
        schema
      end

      private
        def table_names
          ActiveRecord::Base.connection.tables.delete_if do |table|
            table == ActiveRecord::SchemaMigration.table_name
          end
        end
    end

    def as_json
      { tables: @tables.as_json }
    end
  end
end
