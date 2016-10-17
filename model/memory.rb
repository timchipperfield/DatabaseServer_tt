class Memory

  attr_reader :memories

  def initialize
    @memories = []
  end

  def fetch
    @memories
  end

  def add(memory_hash)
    @memories << memory_hash
  end

end
