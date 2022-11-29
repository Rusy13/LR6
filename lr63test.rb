# frozen_string_literal: true

require_relative 'lr63.rb'
RSpec.describe DD do
  it 'ok' do
    expect(described_class.intg(1) { |x| (0..10).inject { |sum| sum + Math.tan(x + 1) / (x + 1) } * 0.1 }.round(2)).to eql(-1.09)
    expect(described_class.intg(1) { |x| ((0..10).inject { |sum| sum + (Math.sin(x) / x) } * 0.09) }.round(2)).to eql(0.76)
  end
end
