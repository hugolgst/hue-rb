# hue-rb

See [Hue](https://github.com/UltimateHackers/hue) for explanations

## Usage

First of all, installe Hue-rb :
```
$ gem install hue-rb
```

Then require it to your Ruby file :
```ruby
require 'hue'
```

You can now use colors, styles and logs :
```ruby
puts 'Hey'.red.bold

info 'wow' # => logs '[!] Wow'
```

List of available colors, styles and logs :
### Colors
* `white`
* `black`
* `red`
* `green`
* `yellow`
* `blue`
* `magenta`
* `cyan`
* `light_gray`
* `dark_dray`
* `light_red`
* `light_green`
* `light_yellow`
* `light_blue`
* `light_magenta`
* `light_cyan`

### Styles
* `bold`
* `italic`
* `underlined`
* `blink`
* `inverted`
* `hidden`
* `strike`

### Logs
* `info` => [!]
* `que` => [?]
* `bad` => [-]
* `good` => [+]
* `run` => [~]
