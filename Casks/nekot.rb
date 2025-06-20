# This file was generated by GoReleaser. DO NOT EDIT.
cask "nekot" do
  desc ""
  homepage "https://github.com/BalanceBalls/nekot"
  version "0.7.3"

  livecheck do
    skip "Auto-generated on release."
  end

  binary "nekot"

  on_macos do
    on_intel do
      url "https://github.com/BalanceBalls/nekot/releases/download/v0.7.3/nekot_0.7.3_darwin_amd64.tar.gz"
      sha256 "7741f858996a9d4d7b6858169b530d55288e64b64abdacdc55cfdfdd0f1a0f9f"
    end
    on_arm do
      url "https://github.com/BalanceBalls/nekot/releases/download/v0.7.3/nekot_0.7.3_darwin_arm64.tar.gz"
      sha256 "1ea0dd7b3fb51f288f4e73ec76e89601494cf6ea9431494e763ede798a6c7276"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/BalanceBalls/nekot/releases/download/v0.7.3/nekot_0.7.3_linux_amd64.tar.gz"
      sha256 "809fd631f2e4f97522240468995be7fd2eb366586aa9dd4feb5956921496bd09"
    end
    on_arm do
      url "https://github.com/BalanceBalls/nekot/releases/download/v0.7.3/nekot_0.7.3_linux_arm64.tar.gz"
      sha256 "c374bedd8bc5dd919eaeb9e7f616881aaefc75d99e293118356c2fb4b9d78803"
    end
  end

  conflicts_with formula: [
      "nekot",
    ]

  postflight do
    if system_command("/usr/bin/xattr", args: ["-h"]).exit_status == 0
      system_command "/usr/bin/xattr", args: ["-d", "com.apple.quarantine", "#{staged_path}/nekot"]
    end
  end

  # No zap stanza required
end
