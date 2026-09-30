cask "callmesangio-mise" do
  arch arm: "arm64", intel: "x64"

  version "2026.9.18"
  sha256 arm:   "d3ed2d6c42e2a9514a8b92d2bda3afb55d30e25e94c14df7be6e7dfb45cb4ddb",
         intel: "4234f1885913de19e0306b602faaa408cdb711018bc53bbc81b207e0d6e0175c"

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
