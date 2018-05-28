spec = client.read.stream('Order$1').from(:head).limit(5).backward

spec.each do |event|
  # Order$1 stream read backwards
end

specify do
  expect { client.read_events_backward('some_stream')}.to output(<<~EOS).to_stderr
    RubyEventStore::Client#read_events_backward has been deprecated.
    Use following fluent API to receive exact results:
    client.read.stream(stream_name).limit(count).from(start).backward.each.to_a
  EOS
end
