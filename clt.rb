
class Clt < Formula
  desc ""
  homepage ""
  url "https://github.com/Liamdemps/homebrew-command-line-tool/archive/v1.0.1.tar.gz"
  sha256 "de6da4596125a7b578e9754ea3d8ca841946439a3bc3cba75786be4ab71a7e8b"

  

  def install
    
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}"
    
  end

  test do
    system "false"
  end
end
