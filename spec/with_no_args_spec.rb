describe 'with no args' do
  it 'can be run' do
    invocation = system('/Users/matthew.heard/Development/Personal/limbo_editor/bin/led')
    expect(invocation).to be_truthy
  end
end
