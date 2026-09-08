cask "callmesangio-mise" do
  arch arm: "arm64", intel: "x64"

  version "2026.9.3"
  sha256 arm:   "cce46fdec4ac33074c86a631e76e28040644101c3b667d165153bc7c44c126df",
         intel: "7f80bf7e024255acdba975791262c425556994b72ddb4525640bb5bcef79501b"

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
