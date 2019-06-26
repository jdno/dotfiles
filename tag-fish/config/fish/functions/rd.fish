function rd
  git status --porcelain | cut -c4- | grep ".rb" | xargs rubocop
end
