cask "visualdiffer" do
  version "2.2.0"
  sha256 "b5c6ef39c58837c490bfb8e67899758923da287c2f29ab01e01d00460827d3f8"

  url "https://github.com/eqms/visualdiffer/releases/download/v#{version}/VisualDiffer-#{version}.zip"
  name "VisualDiffer"
  desc "Visual folder and file comparison tool"
  homepage "https://github.com/eqms/visualdiffer"

  depends_on macos: ">= :ventura"

  app "VisualDiffer.app"
  binary "#{appdir}/VisualDiffer.app/Contents/Helpers/visdiff"

  zap trash: [
    "~/Library/Application Support/com.visualdiffer",
    "~/Library/Preferences/com.visualdiffer.plist",
    "~/Library/Caches/com.visualdiffer",
    "~/Library/Saved Application State/com.visualdiffer.savedState",
  ]
end
