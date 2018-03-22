COLORS = {
  # Colors
  white: 97,
  black: 30,
  red: 31,
  green: 32,
  yellow: 33,
  blue: 34,
  magenta: 35,
  cyan: 36,
  light_gray: 37,
  dark_dray: 38,
  light_red: 91,
  light_green: 92,
  light_yellow: 93,
  light_blue: 94,
  light_magenta: 95,
  light_cyan: 96,

  # Styles
  bold: 1,
  italic: 3,
  underlined: 4,
  blink: 5,
  inverted: 7,
  hidden: 8,
  strike: 9
}.freeze

LOGS = {
  info: { color: :yellow, sym: '!' },
  que: { color: :blue, sym: '?' },
  bad: { color: :red, sym: '-' },
  good: { color: :green, sym: '+' },
  run: { color: :white, sym: '~' }
}.freeze

class String
  COLORS.each do |name, value|
    define_method name do
      "\e[#{value}m#{self}"
    end
  end
end

module Logs
  LOGS.each do |name, values|
    define_method name do |content|
      puts "[#{values[:sym]}] ".send(values[:color]) + content.white
    end
  end
end

class Object
  include Logs
end
