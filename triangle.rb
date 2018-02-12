TRIANGLE_VERSION = "1.0.1"

class Triangle < Formula
  desc "Delaunay image triangulator library"
  homepage "https://github.com/esimov/triangle"
  url "#{homepage}/releases/download/v#{TRIANGLE_VERSION}/triangle-#{TRIANGLE_VERSION}-darwin-amd64.zip"
  sha256 "ebb7cab087b5f2a8ffb61596c31642d288c6ced86585d7295bc8a8feff8a7cc9"

  depends_on "go" => :build

  def install
      bin.install "triangle"
  end

  test do
    system "bin/triangle"
  end
end
