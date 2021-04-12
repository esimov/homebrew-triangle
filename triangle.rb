TRIANGLE_VERSION = "1.1.2"

class Triangle < Formula
  desc "Delaunay image triangulator library"
  homepage "https://github.com/esimov/triangle"
  url "#{homepage}/releases/download/v#{TRIANGLE_VERSION}/triangle-#{TRIANGLE_VERSION}-darwin-amd64.zip"
  sha256 "e7288434844e863854d139f541be9e933e44d9abd82b63f9e09609aee0f2eb55"

  depends_on "go" => :build

  def install
      bin.install "triangle"
  end

  test do
    system "bin/triangle"
  end
end
