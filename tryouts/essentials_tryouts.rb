require 'hexoid'
  
## Hexoid matches to_s
pattern = RUBY_VERSION >= "1.9" ? "#<%s:0x00000%x>" : "#<%s:0x%x>"
@a = Class.new
pattern % [@a.class, @a.hexoid]
#=> @a.to_s

