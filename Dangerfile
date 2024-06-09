# frozen_string_literal: true

danger.import_dangerfile(gem: 'threat')

# 1. Pull Request Title
pr_title.run!

# 2. Labels
failure "Please add labels to this PR" if github.pr_labels.empty?

# 3. TODO
SUPPORTED_COMMENTS = [
  '#', # e.g Ruby/YAML/Dockerfile and so on
  '//' # e.g JS
].freeze
TODO_COMMENENT_REGEX = /(^|\s)(#{SUPPORTED_COMMENTS.join('|')})\sTODO:\s/

(git.modified_files + git.added_files).each do |path|
  File.foreach(path) do |line|
    if line.match?(TODO_COMMENENT_REGEX)
      warn('TODO detected! The whole team will be greatful if you may resolve it <3')
    end

    if line.include?('# rubocop:disable')
      warn('Please, avoid disabling Rubocop rules. Try to refactor the code instead')
    end
  end
end

# 4. Annotate
if git.modified_files.any? { |path| path.start_with?('db/migrate/') }
  unless system('bundle exec annotate --frozen')
    failure('Annotations are out of date! Please, run `annotate` locally and push the changes')
  end
end
