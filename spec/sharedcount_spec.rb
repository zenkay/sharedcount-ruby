require 'spec_helper'

vcr_options = { 
  cassette_name: "sharedcount", 
  record: :new_episodes, 
  match_requests_on: [:method, :uri, :body]
}

describe Sharedcount, vcr: vcr_options do

  it 'has a version number' do
    expect(Sharedcount::VERSION).not_to be nil
  end

  it 'does something useful' do
    expect(false).to eq(true)
  end
end
