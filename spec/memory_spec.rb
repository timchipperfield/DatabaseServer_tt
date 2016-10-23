require 'spec_helper'
require_relative '../model/memory'

describe '#memory' do

  before(:each) do
    @session = ({'key' => 'value'}).to_json
    @key = 'key'
  end

  it "starts with nothing in it" do
    expect(retrive_memory(@session, @key)).to eq 'value'
  end

end
