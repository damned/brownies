threads = (1..3).map do |i|
  Thread.new {
   puts "Thread #{i}: sleeping..."
   sleep 1
   puts "Thread #{i}: slept"
  }
end

threads.map &:join
