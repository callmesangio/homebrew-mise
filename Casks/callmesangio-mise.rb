cask "callmesangio-mise" do
  arch arm: "arm64", intel: "x64"

  version "2026.10.20"
  sha256 arm:   "b268809ab2a8654c95fc39fe630af200bb516dfa1e1a0f77f345f0a698278bdb",
         intel: "f5fcf33a7ada119c6099e7d86cc052f869b73010da56809d7cd95143c48ebcd5"

  url "https://github.com/jdx/mise/releases/download/v#{version}/mise-v#{version}-macos-#{arch}.tar.xz"
  name "mise"
  desc "Dev tools, environment variables, and tasks in one project config"
  homepage "https://mise.jdx.dev/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  binary "mise/bin/mise"
  manpage "mise/man/man1/mise.1"
  generate_completions_from_executable "mise/bin/mise", "completion"
end
