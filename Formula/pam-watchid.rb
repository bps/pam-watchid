class PamWatchid < Formula
  desc "PAM plugin module that allows the Apple Watch to be used for authentication"
  homepage "https://github.com/bps/pam-watchid"
  license "Unlicense"
  head "https://github.com/bps/pam-watchid.git", branch: "main"

  def install
    system "make"
    (lib/"pam").install "pam_watchid.so"
  end

  def caveats
    <<~EOS
      Configure sudo to use this PAM module by adding something like the
      following to /etc/pam.d/sudo_local:

      auth       sufficient     #{HOMEBREW_PREFIX}/lib/pam/pam_watchid.so

      If you uninstall this formula and forget to remove that line, you can
      follow the directions here to temporarily enable the root user and then
      use `su` to get a shell to fix the PAM config.

      https://support.apple.com/en-us/102367
    EOS
  end
end
