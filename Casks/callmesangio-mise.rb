cask "callmesangio-mise" do
  arch arm: "arm64", intel: "x64"

  version "2026.9.6"
  sha256 arm:   "d1f5b1ab1182375f29da13e70c691c2e66e4ab1746e39da49a8bd031b26ed678",
         intel: "700a39554ae3f87bae981386597ba4362dbecf3b34b86af070003e7a4de68380"

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
