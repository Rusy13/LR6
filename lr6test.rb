require_relative 'lr6'

RSpec.describe DD do
  it 'ok' do
    expect(DD.schet.round(2)).to eq 2.72
  end
end
