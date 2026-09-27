# Use colors in coreutils utilities output
alias ls='ls --color=auto'
alias ll='ls --color=auto -lh'
alias la='ls --color=auto -Ah'
alias lal='ls --color=auto -lAh'
alias grep='grep --color'
alias k='kubectl'
alias gum='git checkout main && git pull && git checkout -'

# Local VCS overlay — track AI config independently from host repos
lgit() {
  local dir="$PWD"
  while [ "$dir" != "/" ]; do
    if [ -d "$dir/.local-vcs" ]; then
      local overlay_git_dir
      local overlay_root
      overlay_git_dir="$(cd "$dir/.local-vcs" && pwd -P)"
      overlay_root="$(dirname "$overlay_git_dir")"
      git -C "$overlay_root" --git-dir="$overlay_git_dir" --work-tree="$overlay_root" "$@"
      return
    fi
    dir="$(dirname "$dir")"
  done
  echo "No .local-vcs found in parent directories" >&2
  return 1
}
