
class CommandLineTool < Formula
  desc ""
  homepage ""
  url "https://github.com/Liamdemps/command-line-tool/archive/v1.0.0.tar.gz"
  sha256 "de6da4596125a7b578e9754ea3d8ca841946439a3bc3cba75786be4ab71a7e8b"

  

  def install
    
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}"
    
  end

  test do
   s being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
