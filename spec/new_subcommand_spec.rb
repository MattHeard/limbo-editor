describe 'the new subcommand' do
  let(:bin_location) do
    '/Users/matthew.heard/Development/Personal/limbo_editor/bin/led'
  end

  let(:invocation) { %x(#{bin_location} new) }

  it 'describes itself' do
    expect(invocation).to eq "creates a new project\n"
  end
end
