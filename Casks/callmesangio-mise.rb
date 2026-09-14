cask "callmesangio-mise" do
  arch arm: "arm64", intel: "x64"

  version "2026.9.7"
  sha256 arm:   "fd6c609f53d72bbae9c89e0050528eafcfcd857038bde59c74d3538e603c1241",
         intel: "5993d7bb646eabae1b360e52fbc67d348bf274015a55b24b573234fa32cf890a"

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
