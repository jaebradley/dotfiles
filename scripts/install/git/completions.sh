#!/bin/bash/

function installGitCompletions() {
  local targetDirectory="${HOME}/.completions/bash"
  local filePath="${targetDirectory}/git"

  if [[ -f "${filePath}" ]]; then echo "File at ${filePath} already exists" && exit 0; fi

  mkdir -p "${targetDirectory}"
  if [[ $? -ne 0 ]]; then echo "Error on line ${LINENO}" && exit 255; fi

  local gitVersionInformation=$(git --version)
  if [[ $? -ne 0 ]]; then echo "Error on line ${LINENO}" && exit 255; fi

  local version=$(awk '{ print $3 }' <<< "${gitVersionInformation}")
  if [[ $? -ne 0 ]]; then echo "Error on line ${LINENO}" && exit 255; fi

  curl -L "https://raw.githubusercontent.com/git/git/v${version}/contrib/completion/git-completion.bash" --output "${filePath}"
  if [[ $? -ne 0 ]]; then echo "Error on line ${LINENO}" && exit 255; fi

  chmod 755 "${filePath}"
  if [[ $? -ne 0 ]]; then echo "Error on line ${LINENO}" && exit 255; fi
}

installGitCompletions
