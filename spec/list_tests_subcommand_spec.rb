describe 'the list-tests subcommand' do
  let(:bin_location) do
    '/Users/matthew.heard/Development/Personal/limbo_editor/bin/led'
  end

  context 'without args' do
    let(:invocation) { %x(#{bin_location} list-tests) }

    it 'lists the top level test descriptions' do
    end
  end

  context 'with a --help flag' do
    let(:invocation) { %x(#{bin_location} list-tests --help) }

    it 'describes itself' do
      expect(invocation).to eq "lists test descriptions\n"
    end
  end
end
