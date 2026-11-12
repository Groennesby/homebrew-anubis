class Anubis < Formula
  desc "Anubis AI Agent and Local LLM Sovereign Engine (GUI + Hermes CLI, Startup Brain, 0% Censorship)"
  homepage "https://github.com/Groennesby/Anubis-Agent"
  version "1.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Groennesby/Anubis-Agent/releases/download/v1.3.0/anubis-darwin-arm64.tar.gz"
      sha256 "48be3edea253dea3fa76c3c181c5ab1016ceca428ccaf974595a3471dac6edfd"
    else
      url "https://github.com/Groennesby/Anubis-Agent/releases/download/v1.3.0/anubis-darwin-amd64.tar.gz"
      sha256 "ba288c51f1839f7972d5cbfc44dda54865b3ea02227229cffed8d0aa8dad0303"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Groennesby/Anubis-Agent/releases/download/v1.3.0/anubis-linux-arm64.tar.gz"
      sha256 "7bf384ce503a9cb4c60d2b9ca3283389d427bf8753161093c94e345501d9ab59"
    else
      url "https://github.com/Groennesby/Anubis-Agent/releases/download/v1.3.0/anubis-linux-amd64.tar.gz"
      sha256 "6a1b8f26c997cf24a65e2466084f4c22e0b51f43a4cd333f957a0f731c8d201c"
    end
  end

  def install
    bin.install "anubis"
    bin.install "anubis-gui"
    bin.install "anubis-core"
  end

  test do
    assert_match "ANUBIS AGENT", shell_output("#{bin}/anubis --version")
  end
end
