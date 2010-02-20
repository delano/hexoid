
library :hexoid, 'lib'
tryouts "Essentials" do
  
  drill "default", Thread.current do
    "#<%s:0x%s>" % [Thread.current.class, Thread.current.object_id]
  end
  
end