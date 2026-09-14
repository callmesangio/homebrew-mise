cask "callmesangio-mise" do
  arch arm: "arm64", intel: "x64"

  version "2026.9.8"
  sha256 arm:   "5fd73275734311661b49f6d8b909194a576a07d44833aa9549783fb83a2879a6",
         intel: "8d321b8aa708e96e0f55deb2a6dc3471464b722a8da16e2080b0c357a3da3be0"

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
