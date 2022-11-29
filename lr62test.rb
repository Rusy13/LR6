# frozen_string_literal: true

require_relative 'lr62.rb'
RSpec.describe DD do
  it 'ok' do
    exp = 10**-5
    expect(described_class.schet(exp)[1]).to eql(9)
  end
end
