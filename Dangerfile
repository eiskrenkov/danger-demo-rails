# frozen_string_literal: true

danger.import_dangerfile(gem: 'threat')

pr_title.run!

on :local do
  # rake 'db:create', 'db:migrate'

  # rspec.run!
  #

  rubocop.run!
end

on :github do
  workflow 'pr/lint' do
    message "Message from github 'pr/lint' workflow"
  end

  workflow 'pr/ci' do
    message "Message from github 'pr/ci' workflow"

    rake 'db:create', 'db:migrate'

    rspec.run!
  end
end
