require 'spec_helper'

module Skmz
  describe SchemasController do
    describe "GET index" do
      it 'assigns @schema' do
        schema = Schema.new
        Schema.should_receive(:load).and_return(schema)
        get :index
        expect(assigns(:schema)).to eq(schema)
      end

      it "renders the index template" do
        get :index
        expect(response).to render_template('index')
      end
    end
  end
end
