require 'hexoid'

# from Flameeyes, via:
#   http://github.com/delano/hexoid/issues#issue/1/comment/332863
#
#x86-64 host:
#
#   flame@yamato hexoid % ruby18 -e 'puts Class.new'
#   #<Class:0x7fbf29162598>
#   flame@yamato hexoid % ruby19 -e 'puts Class.new'
#   #<Class:0x000000016a7010>
#
#i386 (virtual) host:
#
#   tinderbox ~ # ruby18 -e 'puts Class.new'
#   #<Class:0xf73d94b8>
#   tinderbox ~ # ruby19 -e 'puts Class.new'
#   #<Class:0x9071e40>
#
#Plus it fails with jruby altogether:
#
#   flame@yamato hexoid % jruby -S try
#   Ruby 1.8.7 @ Thu Jul 29 10:52:32 +0200 2010
#
#   tryouts/essentials_tryouts.rb                                FAIL
#
#    ## Hexoid matches to_s
#   4    pattern = RUBY_VERSION >= "1.9" ? "#<%s:0x00000%x>" : "#<%s:0x%x>"
#   5    @a = Class.new
#   6    pattern % [@a.class, @a.hexoid]
#   7    #=> @a.to_s
#        "#<Class:0x1074>" != "#<Class:01x261a6518>"
#

## Hexoid matches to_s
@obj = Class.new
@obj.to_s.match(/0x([0-9a-fA-F]+)/)
a = @obj.hexoid.to_i(16)
b = $1.to_i(16)
a == b
#=> true

