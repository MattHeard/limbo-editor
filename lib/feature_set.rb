class FeatureSet
  def initialize(test_dir)
    @test_dir = test_dir
  end

  def print_list
    puts features.join("\n")
  end

  private

  attr_reader :test_dir

  def features
    matches.map { |m| m[1] }
  end

  def matches
    feature_descriptions.map { |d| d.match(/describe '(.*)'/) }
  end

  def feature_descriptions
    test_contents.split("\n")
  end

  def test_contents
    %x{cat #{test_dir}/*}
  end
end
