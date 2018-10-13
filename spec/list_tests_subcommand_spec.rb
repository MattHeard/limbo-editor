describe 'the list-tests subcommand' do
  let(:bin_location) do
    '/Users/matthew.heard/Development/Personal/limbo_editor/bin/led'
  end

  context 'without args' do
    features = %w[first second third]
    let(:features) { features }
    subject(:invocation) { %x(#{bin_location} list-tests) }

    context 'lists the top level test descriptions' do
      before do
        system('mkdir -p ./tmp/spec')
        features.each do |feature|
          File.open("./tmp/spec/#{feature}_spec.rb", "w") do |file|
            file.puts "describe '#{feature}'"
          end
        end
      end

      it { is_expected.to eq (features.join("\n") + "\n") }
    end
  end

  context 'with a --help flag' do
    let(:invocation) { %x(#{bin_location} list-tests --help) }

    it 'describes itself' do
      expect(invocation).to eq "lists test descriptions\n"
    end
  end
end
