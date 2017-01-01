require 'fileutils'
threads = (1..2).map do |i|
  r, w = IO.pipe
  Thread.new {
   writing = (i % 2 == 0)
   mode = writing ? 'writing' : 'reading'
   puts "Thread #{i}: #{mode}..."
   if writing
     w.puts "firstline"
     puts 'wrote line'
     sleep 2
     w.puts "2ndline"
     puts 'wrote line'
     sleep 2
     puts 'closing write'
     w.close_write
     r.close
   else
     sleep 1
     puts r.read
   end
   puts "Thread #{i}: #{mode} complete"
  }
end

threads.map &:join
