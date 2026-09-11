cask "callmesangio-mise" do
  arch arm: "arm64", intel: "x64"

  version "2026.9.5"
  sha256 arm:   "d35a6d8cab7adcef17d8910cf0e665002773e58aad09db60eea496515f53f2a3",
         intel: "2c1e9a152b4ce14651251986c21c2229a7e7c056f10190c11997a453a898b900"

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
