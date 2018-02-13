TRIANGLE_VERSION = "1.0.1"

class Triangle < Formula
  desc "Delaunay image triangulator library"
  homepage "https://github.com/esimov/triangle"
  url "#{homepage}/releases/download/v#{TRIANGLE_VERSION}/triangle-#{TRIANGLE_VERSION}-darwin-amd64.zip"
  sha256 "eed2e428c94cd480e29044e01d25cdcced879347e0f6ad6f41f8dd47bc22aec8"

  depends_on "go" => :build

  def install
      bin.install "triangle"
  end

  test do
    system "bin/triangle"
  end
end
