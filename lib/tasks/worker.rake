namespace :test do
  task :work => :environment do
    loop do
  	  puts "I'm working VERSION 7"
  	  sleep(5)
  	end
  end
end
