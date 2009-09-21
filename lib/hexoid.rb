

class Object 
  def hexoid
    prefix = RUBY_VERSION >= '1.9' ? '0x00000' : '0x'
    "%s%x" % [prefix, (self.object_id << 1)]
  end
  alias hex_object_id hexoid
end