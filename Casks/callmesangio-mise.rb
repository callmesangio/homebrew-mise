cask "callmesangio-mise" do
  arch arm: "arm64", intel: "x64"

  version "2026.9.9"
  sha256 arm:   "a2ef8a3564e74e86b48635b235ca8f3d32e40bbba30ed6c02b98149a979e46e9",
         intel: "a6bae7923ee84322bcd3fe42eca5260a825f992a65494e76aa71259c65f59d08"

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
