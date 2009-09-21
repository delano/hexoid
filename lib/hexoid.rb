

class Object 
  def hex_object_id
    prefix = RUBY_VERSION >= '1.9' ? '0x00000' : '0x'
    "%s%x" % [prefix, (self.object_id << 1)]
  end
  alias hexoid hex_object_id
end