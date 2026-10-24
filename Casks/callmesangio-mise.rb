cask "callmesangio-mise" do
  arch arm: "arm64", intel: "x64"

  version "2026.10.19"
  sha256 arm:   "1d0d916c4988035eef24d5e73964a27fbddc51079053ce399f98bfe7dab52493",
         intel: "9c3e297dbf31837d2639e5fcbc7ca0f6c739edd14864c5a7a00992ed638d9c99"

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
