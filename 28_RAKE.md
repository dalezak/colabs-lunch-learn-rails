# Rake
- lib/tasks/db/recreate.rake
```
namespace :db do
  desc "Drop, Create, Migrate, Seed"
  task :recreate do
    puts "rake db:drop"
    Rake::Task["db:drop"].invoke

    puts "rake db:create"
    Rake::Task["db:create"].invoke

    if File.exist?('db/schema.rb')
      puts "File.delete('db/schema.rb')"
      File.delete('db/schema.rb')
    end

    puts "rake db:migrate"
    Rake::Task["db:migrate"].invoke

    puts "rake db:reset"
    Rake::Task["db:reset"].invoke
  end
end
```
```
rake db:recreate
```