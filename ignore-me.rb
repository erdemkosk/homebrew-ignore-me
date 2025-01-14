# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class IgnoreMe < Formula
  desc "A smart and beautiful CLI tool for .gitignore generation"
  homepage "https://github.com/erdemkosk/ignore-me"
  version "1.0.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/erdemkosk/ignore-me/releases/download/v1.0.0/ignore-me_Darwin_x86_64.tar.gz"
      sha256 "30feb437c28d61ddaebabaffaddcb9b495e6172729367c2fb34bb85106460fd2"

      def install
        bin.install "ignore-me"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/erdemkosk/ignore-me/releases/download/v1.0.0/ignore-me_Darwin_arm64.tar.gz"
      sha256 "8b4ca201f57996f3879b8e13566ca4fe023eee3c785069a0a355f0e53d03bad7"

      def install
        bin.install "ignore-me"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/erdemkosk/ignore-me/releases/download/v1.0.0/ignore-me_Linux_x86_64.tar.gz"
        sha256 "20a6974bd7ef7abda3e9f6caa2cb1995e2e929e01b62197e7a05af672181e418"

        def install
          bin.install "ignore-me"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/erdemkosk/ignore-me/releases/download/v1.0.0/ignore-me_Linux_arm64.tar.gz"
        sha256 "4bc3c3228ee88f481e59a7d8877947d390411d95775f992fea667b508de1411e"

        def install
          bin.install "ignore-me"
        end
      end
    end
  end

  test do
    system "#{bin}/ignore-me --version"
  end
end
