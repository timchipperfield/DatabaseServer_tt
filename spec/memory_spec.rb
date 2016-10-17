require 'spec_helper'
require_relative '../model/memory'

describe '#memory' do

  before(:each) do
    @memory = Memory.new
  end

  it "starts with nothing in it" do
    expect(@memory.fetch).to eq []
  end

  it "can add new memories" do
    expect {@memory.add({key: 'value'})}.to change{ @memory.memories.count }.by(1)
  end

end
