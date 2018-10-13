describe 'the list-tests subcommand' do
  let(:bin_location) do
    '/Users/matthew.heard/Development/Personal/limbo_editor/bin/led'
  end

  context 'without args' do
    let(:invocation) { %x(#{bin_location} list-tests) }

    it 'lists the top level test descriptions' do
      system('mkdir -p ./tmp/spec')
      %w[first second third].each do |feature|
        File.open("./tmp/spec/#{feature}_spec.rb", "w") do |file|
          file.puts "describe '#{feature}'"
        end
      end

      expect(invocation).to eq (%w[first second third].join("\n") + "\n")
    end
  end

  context 'with a --help flag' do
    let(:invocation) { %x(#{bin_location} list-tests --help) }

    it 'describes itself' do
      expect(invocation).to eq "lists test descriptions\n"
    end
  end
end
