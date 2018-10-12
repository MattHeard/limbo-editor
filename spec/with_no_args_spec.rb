describe 'with no args' do
  it 'can be run' do
    bin_location = '/Users/matthew.heard/Development/Personal/limbo_editor/bin/led'
    invocation = system(bin_location)
    expect(invocation).to be_truthy
  end
end
