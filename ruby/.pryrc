Pry.config.theme        = 'railscasts'
Pry.config.prompt       = [
  -> obj, level, pry { "\33[0;3#{pry.last_result_is_exception? ? 1 : 2}m#{"#{level}:" if level > 0}[#{pry.input_array.size}]\33[0m#{obj}>" },
  -> obj, level, pry { "\33[0;3#{pry.last_result_is_exception? ? 1 : 2}m#{"#{level}:" if level > 0}[#{pry.input_array.size}]\33[0m#{obj}…" }
]