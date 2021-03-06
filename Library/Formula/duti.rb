require 'formula'

class Duti < Formula
  homepage 'http://duti.org/'
  head 'https://github.com/fitterhappier/duti.git'
  url 'https://github.com/fitterhappier/duti/archive/duti-1.5.2.tar.gz'
  sha1 'c36fcf3b9f48184263456862dfe317d8b1109d6b'

  depends_on :autoconf

  def install
    system "autoreconf", "-vfi"
    system "./configure", "--prefix=#{prefix}"
    system "make install"
  end

  def test
    system "#{bin}/duti", "-x", "txt"
  end
end
