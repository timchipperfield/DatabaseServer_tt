class Memory

  attr_reader :memories

  def initialize
    @memories = []
  end

  def fetch
    @memories
  end

  def add(memory_hash)
    @memories << hashify(parse(memory_hash))
  end

  def parse(keyval)
    keyval.split('=')
  end

  def hashify(keyval_array)
    keyval_array.each_with_object({}) { |v,h| h[v] = f(v) }
  end


end
