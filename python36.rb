class Python36 < Formula
  desc "Interpreted, interactive, object-oriented programming language"
  homepage "https://www.python.org/"
  url "www.python.org/ftp/python/3.6.5/Python-3.6.5.tgz"
  version "3.6.5"
  sha256 "53a3e17d77cd15c5230192b6a8c1e031c07cd9f34a2f089a731c6f6bd343d5c6"

  def install
    cflags = "CFLAGS=-I/usr/local/opt/openssl/include"
    ldflags = "LDFLAGS=-L/usr/local/opt/openssl/lib"
    system "./configure", "--prefix=#{prefix}", cflags, ldflags
    system "make"
    system "make install"
  end

  def post_install
    (HOMEBREW_PREFIX/"bin").install_symlink bin/"python3.6"
    (HOMEBREW_PREFIX/"bin").install_symlink bin/"python3.6-config"
  end

end
