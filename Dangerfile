# frozen_string_literal: true

danger.import_dangerfile(gem: 'threat')

on :local do
  todo.run!
  rubocop.run!
end

on :github do
  workflow 'pr/lint' do
    pr_title.run!

    todo.run!
    rubocop.run!
  end

  workflow 'pr/ci' do
    rake 'db:create', 'db:migrate'

    rspec.run!
  end
end
