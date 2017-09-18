require "./wingman.rb"

RSpec.describe Whatever do
  describe '#basic' do
    it 'adds' do
      expect(Whatever.new.add(1,2)).to eq(3)
    end
  end
end
