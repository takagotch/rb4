spec = client.read.stream('Order$1').from(:head).limit(5).backward

spec.each do |event|
  # Order$1 stream read backwards
end

