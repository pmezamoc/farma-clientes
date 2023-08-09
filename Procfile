web: bundle exec puma -p $PORT -C ./config/puma.rb
release: bundle exec rails db:migrate
web: bin/rails server -p 3000
css: bin/rails tailwindcss:watch
sidekiq: bundle exec sidekiq -c 2
queue: redis-server
