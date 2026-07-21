cask "neurodeskapp" do
  arch arm: "arm64", intel: "x64"

  version "1.15.0"
  sha256 arm: "5e194e7d7393f1ad8820240c5bf70e74130eb3343a3a1c2fe40dbda8970e0c6f", intel: "a14ef0621960b1919ba66be42515c116caa060a8b75fa92fc4ad9fb4579f18f1"

  url "https://github.com/NeuroDesk/neurodesk-app/releases/download/v#{version}/NeurodeskApp-Setup-macOS-#{arch}.dmg"
  name "NeurodeskApp"
  desc "Neurodesk desktop application for neuroscience computing"
  homepage "https://neurodesk.org/"

  depends_on macos: ">= :catalina"

  app "NeurodeskApp.app"

  zap trash: [
    "~/Library/Application Support/neurodeskapp",
    "~/Library/Preferences/org.neurodesk.neurodeskapp.plist",
    "~/Library/Saved Application State/org.neurodesk.neurodeskapp.savedState",
  ]
end
