require 'benchmark'


test_hash = {a: 1, b: 2, c: 3, d: 4}

Benchmark.bm do |x|
  x.report do 
    10000.times{ test_hash.any?{|k, v| v == 2} }
  end

  x.report do 
    10000.times{ test_hash.all?{|k, v| v == 2} }
  end
end
