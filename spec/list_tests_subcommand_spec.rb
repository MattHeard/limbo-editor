describe 'the list-tests subcommand' do
  let(:bin_location) do
    '/Users/matthew.heard/Development/Personal/limbo_editor/bin/led'
  end

  let(:invocation) { %x(#{bin_location} list-tests) }

  context 'without args' do
    it 'describes itself' do
      expect(invocation).to eq "lists test descriptions\n"
    end
  end
end
