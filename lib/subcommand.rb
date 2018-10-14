class Subcommand
  DESCRIPTIONS = {
    'new' => 'creates a new project',
    'list-tests' => 'lists test descriptions'
  }.freeze

  def initialize(name)
    @name = name
  end

  def description
    descriptions[name]
  end

  def name
    @name
  end

  private

  def descriptions
    DESCRIPTIONS
  end
end
