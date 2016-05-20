require 'random/online'

generator1 = RealRand::RandomOrg.new
counts = Hash.new 0
puts "Sorting..."
picks = generator1.randnum(200, 1, ARGV.count)
picks.each do |pick|
  pick = ARGV[pick - 1]
  counts[pick] += 1
  puts "#{pick} - #{counts[pick]}"
end
puts "Sorted!"
puts "Results:\n"
counts = counts.sort{|a,b| a[1] <=> b[1]}.reverse
counts.each do |pick, count|
  puts "#{pick} got a total of #{count} points"
end
