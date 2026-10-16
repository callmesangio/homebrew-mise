cask "callmesangio-mise" do
  arch arm: "arm64", intel: "x64"

  version "2026.10.12"
  sha256 arm:   "5b23472449225157fad92f341dd7a6ab7020678528d8106e5b9f9f9e1d6228d0",
         intel: "875411b54e8d26eed441472de3afe717041e421c90f76b2388eca4a8508ae64c"

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
