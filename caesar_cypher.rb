class CaesarCypher
  attr_reader :encoder, :decoder

  def initialize(rotation)
    @encoder = []
    @decoder = []
    (0..25).each do |i|
      @encoder << ('A'.ord + (i + rotation) % 26).chr
      @decoder << ('A'.ord + (i - rotation) % 26).chr
    end
  end

  def encode(message)
    transform(message, encoder)
  end

  def decode(message)
    transform(message, decoder)
  end

  private

  def transform(message, code)
    (0..message.size - 1).each do |i|
      ch = message[i]
      if /[[:upper:]]/.match(ch)
        j = ch.ord - 'A'.ord
        message[i] = code[j]
      end
    end
    message
  end
end
