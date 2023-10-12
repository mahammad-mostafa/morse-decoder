MORSE_CODE = {
  'A' => '.-', 'B' => '-...', 'C' => '-.-.', 'D' => '-..', 'E' => '.', 'F' => '..-.', 'G' => '--.', 'H' => '....',
  'I' => '..', 'J' => '.---', 'K' => '-.-', 'L' => '.-..', 'M' => '--', 'N' => '-.', 'O' => '---', 'P' => '.--.',
  'Q' => '--.-', 'R' => '.-.', 'S' => '...', 'T' => '-', 'U' => '..-', 'V' => '...-', 'W' => '.--', 'X' => '-..-',
  'Y' => '-.--', 'Z' => '--..', '0' => '-----', '1' => '.----', '2' => '..---', '3' => '...--', '4' => '....-',
  '5' => '.....', '6' => '-....', '7' => '--...', '8' => '---..', '9' => '----.'
}.freeze

def decode_character(character)
  MORSE_CODE.each { |key, value| return key if value == character }
end

def decode_word(word)
  result = ''
  word.split.each { |character| result += decode_character(character) }
  result
end

def decode_message(message)
  result = []
  message.strip.split('   ').each { |word| result.append(decode_word(word)) }
  result.join(' ')
end

puts decode_message('      .-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
