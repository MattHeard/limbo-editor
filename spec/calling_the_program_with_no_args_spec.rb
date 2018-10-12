describe 'calling the program with no args' do
  let(:bin_location) do
    '/Users/matthew.heard/Development/Personal/limbo_editor/bin/led'
  end

  let(:invocation) { %x(#{bin_location}) }

  it 'describes the program' do
    expect(invocation).to eq "Limbo EDitor\n"
  end
end
