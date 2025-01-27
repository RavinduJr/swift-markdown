Pod::Spec.new do |s|
  s.name         = 'Markdown'
  s.version      = '1.0.0'
  s.summary      = 'A Swift package for handling Markdown using cmark.'
  s.description  = <<-DESC
                   SwiftMarkdown provides tools to parse and work with Markdown content 
                   using the cmark library and its extensions.
                   DESC
  s.homepage     = 'https://swift.org'
  s.license      = { :type => 'Apache 2.0 with Runtime Library Exception', :file => 'LICENSE.txt' }
  s.author       = { 'Apple Inc.' => 'swift.org' }
  s.source       = { :git => 'https://github.com/apple/swift-markdown.git', :tag => s.version }

  s.swift_version = '5.7'
  s.ios.deployment_target = '11.0'
  s.macos.deployment_target = '10.15'
  s.tvos.deployment_target = '11.0'
  s.watchos.deployment_target = '4.0'

  # Source files
  s.source_files = 'Sources/**/*.swift'

  # Dependencies
  s.dependency 'CAtomic', '~> 1.0'
  s.dependency 'cmark-gfm', '~> 0.29.0'
  s.dependency 'cmark-gfm-extensions', '~> 0.29.0'

  # Exclude files
  s.exclude_files = ['Sources/Markdown/CMakeLists.txt']

  # Resources for tests (optional)
  s.resource_bundles = {
    'MarkdownTestsResources' => ['Tests/MarkdownTests/Visitors/Everything.md']
  }
end
