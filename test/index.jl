
@require "../"

suite("should parse milliseconds") do
  parsed = parse(100)
  @test parsed["milliseconds"] == 100
end

suite("should parse seconds") do
  parsed = parse(1000)
  @test parsed["seconds"] == 1
end

suite("should parse minutes") do
  parsed = parse(60000)
  @test parsed["minutes"] == 1
end

suite("should parse hours") do
  parsed = parse(3600000)
  @test parsed["hours"] == 1
end

suite("should parse days") do
  parsed = parse(86400000)
  @test parsed["days"] == 1
end