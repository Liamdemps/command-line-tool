
class Clt < Formula
  desc ""
  homepage ""
  url "https://github.com/Liamdemps/homebrew-command-line-tool/archive/1.0.2.tar.gz"
  sha256 "eb4249b80ff04666e4dd061dc1aa69f7b7c10863d53c90e5f3d1268e861a8cdf"



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
