require 'irb/completion'
require 'wirble'
Wirble::Colorize.colors = {
  comma: :white, refers: :white, open_hash: :white, close_hash: :white,
  open_array: :white, close_array: :white, 
  open_object: :green, object_class: :green, object_addr_prefix: :green, 
  object_line_prefix: :green, close_object: :green, 
  symbol: :cyan, symbol_prefix: :cyan, 
  open_string: :green, string: :green, close_string: :green, 
  number: :green, keyword: :light_cyan, class: :white, range: :white
}
Wirble.colorize
IRB.conf[:PROMPT][:MY_PROMPT] = {
  PROMPT_I: '[%n]%m>', PROMPT_S: '[%n]%m%l', 
  PROMPT_N: '[%n]%m…', PROMPT_C: '[%n]%m…',  RETURN: "=> %s\n"
}
IRB.conf[:AUTO_INDENT] = true
IRB.conf[:PROMPT_MODE] = :MY_PROMPT