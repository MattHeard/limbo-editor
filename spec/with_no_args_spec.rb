describe 'with no args' do
  let(:bin_location) do
    '/Users/matthew.heard/Development/Personal/limbo_editor/bin/led'
  end

  let(:invocation) { system(bin_location) }

  it 'can be run' do
    expect(invocation).to be_truthy
  end
end
