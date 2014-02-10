require 'spec_helper'

module Skmz
  describe Table do
    describe :as_json do
      it "should eq json format" do
        table = Table.new(name: 'users')
        table.should_receive(:columns).and_return([
          Column.new(name: 'id', type: 'integer'),
          Column.new(name: 'name', type: 'string')
        ])
        actual = { name: 'users',
                   columns: [
                     { 'name' => 'id', 'type' => 'integer'},
                     { 'name' => 'name', 'type' => 'string'}
                   ]
                 }
        expect(table.as_json).to eq actual
      end
    end

    describe :columns do
      it "should eq Array of Column" do
        columns = [
          Column.new(name: 'id', type: 'integer'),
          Column.new(name: 'name', type: 'string')
        ]
        table = Table.new(name: 'users')
        table.instance_variable_set(:@columns, columns)
        expect(table.columns).to eq columns
      end
    end
  end
end
