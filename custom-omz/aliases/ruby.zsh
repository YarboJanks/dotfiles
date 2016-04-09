alias be='bundle exec'
alias yolo="be rake db:drop db:create db:migrate db:seed"
alias irb='pry'
alias nyanspec='rspec spec --format NyanCatFormatter'
alias rubytags='ctags -R --languages=ruby --exclude=.git --exclude=log . $(bundle list --paths)'
alias die='pgrep spring | xargs kill -9 &&  pgrep ruby | xargs kill -9'
