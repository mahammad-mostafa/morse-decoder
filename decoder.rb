MORSE_CODE = {
  'A' => '.-',
  'B' => '-...',
  'C' => '-.-.',
  'D' => '-..',
  'E' => '.',
  'F' => '..-.',
  'G' => '--.',
  'H' => '....',
  'I' => '..',
  'J' => '.---',
  'K' => '-.-',
  'L' => '.-..',
  'M' => '--',
  'N' => '-.',
  'O' => '---',
  'P' => '.--.',
  'Q' => '--.-',
  'R' => '.-.',
  'S' => '...',
  'T' => '-',
  'U' => '..-',
  'V' => '...-',
  'W' => '.--',
  'X' => '-..-',
  'Y' => '-.--',
  'Z' => '--..',
  '0' => '-----',
  '1' => '.----',
  '2' => '..---',
  '3' => '...--',
  '4' => '....-',
  '5' => '.....',
  '6' => '-....',
  '7' => '--...',
  '8' => '---..',
  '9' => '----.'
}.freeze

def decode_character(character)
  MORSE_CODE.each do |key, value|
    return key if value == character
  end
end

def decode_word(word)
  result = ''
  characters = word.split
  characters.each do |character|
    result += decode_character(character)
  end
  result
end

def decode_message(message)
  result = []
  words = message.strip.upcase.split('   ')
  words.each do |word|
    result.append(decode_word(word))
  end
  result.join(' ')
end

puts decode_message '      .-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...'
