cask "telegram-desktop" do
  version "2.4.1"
  sha256 "8e3bac145a420ff7c45e49b61dfb59dd148c6bb30a90bf1b652c52d6224fb9d1"

  # github.com/telegramdesktop/tdesktop/ was verified as official when first introduced to the cask
  url "https://github.com/telegramdesktop/tdesktop/releases/download/v#{version}/tsetup.#{version}.dmg"
  appcast "https://github.com/telegramdesktop/tdesktop/releases.atom"
  name "Telegram Desktop"
  desc "Desktop client for Telegram messenger"
  homepage "https://desktop.telegram.org/"

  auto_updates true
  conflicts_with cask: "homebrew/cask-versions/telegram-desktop-dev"

  # Renamed to avoid conflict with telegram
  app "Telegram.app", target: "Telegram Desktop.app"

  zap trash: [
    "~/Library/Application Support/Telegram Desktop",
    "~/Library/Preferences/com.tdesktop.Telegram.plist",
    "~/Library/Saved Application State/com.tdesktop.Telegram.savedState",
  ]
end
