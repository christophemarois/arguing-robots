if ARGV.size === 0 || !(ARGV[0].downcase =~ /\.txt$/)
  raise "Error: You must provide a .txt as the first argument"
end

begin
  content = File.read(ARGV[0])
rescue
  raise "Could not open file #{ARGV[0]}"
end

content.split(/\n/).compact.each.with_index do |line, i|
  line = line.delete "\""

  parts = line.split(':')

  voice = parts[0].strip
  text = parts[1..-1].join(':').strip

  next if voice.empty? || text.nil? || text.empty?

  puts "#{voice}: \"#{text}\""
  Process.run("say -v #{voice} \"#{text}\"", shell: true)
end
