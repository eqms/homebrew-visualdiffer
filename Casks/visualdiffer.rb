cask "visualdiffer" do
  version "2.2.1"
  sha256 "96a4923064cf2d24662b16c190de2bd550919772625107803abbeb5fa16ee2b9"

  url "https://github.com/eqms/visualdiffer/releases/download/v#{version}/VisualDiffer-#{version}.zip"
  name "VisualDiffer"
  desc "Visual folder and file comparison tool"
  homepage "https://github.com/eqms/visualdiffer"

  depends_on macos: ">= :ventura"

  app "VisualDiffer.app"
  binary "#{appdir}/VisualDiffer.app/Contents/Helpers/visdiff"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/VisualDiffer.app"]
  end

  zap trash: [
    "~/Library/Application Support/com.visualdiffer",
    "~/Library/Preferences/com.visualdiffer.plist",
    "~/Library/Caches/com.visualdiffer",
    "~/Library/Saved Application State/com.visualdiffer.savedState",
  ]
end
