namespace :db do
  desc "Loads initial database models for the current environment."
  task :populate => :environment do
    Dir[File.join(RAILS_ROOT, 'db', 'seed_data', '*.rb')].sort.each do |fixture|
      puts "Running #{fixture}..."
      load fixture
    end
    Dir[File.join(RAILS_ROOT, 'db', 'seed_data', RAILS_ENV, '*.rb')].sort.each do |fixture|
      puts "Running #{fixture}..."
      load fixture
    end
  end
end
