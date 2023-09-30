require 'memory_profiler'


test_hash = {a: 1, b: 2, c: 3, d: 4}
test_array = [1, 2, 3, 4]


report = MemoryProfiler.report do
  test_hash.any?{|k, v| v == 2}

  test_hash.all?{|k, v| v == 1}
end

report.pretty_print(to_file: "memory_#{RUBY_VERSION}.txt")


report = MemoryProfiler.report do
  test_array.any?{|k, v| v == 2}

  test_array.all?{|k, v| v == 1}
  
  test_hash.detect{|k, v| v == 1}

  test_hash.none?

  test_hash.find_all{|k, v| v == 1}

  test_hash.has_value?(1)
end

report.pretty_print(to_file: "memory_2_#{RUBY_VERSION}.txt")