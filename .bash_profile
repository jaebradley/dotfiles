function loadGitCompletions() {
  local filePath="${HOME}/.completions/bash/git"
  if [[ -e "${filePath}" ]]; then
    source "${filePath}"
  fi
}

loadGitCompletions

