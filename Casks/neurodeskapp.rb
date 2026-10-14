cask "neurodeskapp" do
  arch arm: "arm64", intel: "x64"

  version "2.1.0"
  sha256 arm: "884d06dc49729ea83fc37f91248d9b2b0dfed1c3cbc37abe7ad2be987d3e745c", intel: "c2ce64583150e58e1415c79303366f3cf97f84b1b1c56f0674645bd789d5a926"

  url "https://github.com/NeuroDesk/neurodesk-app/releases/download/v#{version}/NeurodeskApp-Setup-macOS-#{arch}.dmg"
  name "NeurodeskApp"
  desc "Desktop application for neuroscience computing"
  homepage "https://neurodesk.org/"

  depends_on macos: ">= :catalina"

  app "NeurodeskApp.app"

  zap trash: [
    "~/Library/Application Support/neurodeskapp",
    "~/Library/Preferences/org.neurodesk.neurodeskapp.plist",
    "~/Library/Saved Application State/org.neurodesk.neurodeskapp.savedState",
  ]
end
