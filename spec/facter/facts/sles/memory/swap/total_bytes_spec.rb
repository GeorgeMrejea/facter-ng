# frozen_string_literal: true

describe 'Sles MemorySwapTotalBytes' do
  context '#call_the_resolver' do
    it 'returns a fact' do
      expected_fact = double(Facter::ResolvedFact, name: 'memory.swap.total_bytes', value: 1024)
      allow(Facter::Resolvers::Linux::Memory).to receive(:resolve).with(:swap_total).and_return(1024)
      allow(Facter::ResolvedFact).to receive(:new).with('memory.swap.total_bytes', 1024).and_return(expected_fact)

      fact = Facter::Sles::MemorySwapTotalBytes.new
      expect(fact.call_the_resolver).to eq(expected_fact)
    end
  end
end
