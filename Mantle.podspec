Pod::Spec.new do |s|
  s.name         = "Mantle"
  s.version      = "2.1.0"
  s.summary      = "Model framework for Cocoa and Cocoa Touch."

  s.homepage     = "https://github.com/github/Mantle"
  s.license      = 'MIT'
  s.author       = { "GitHub" => "support@github.com" }

  s.source       = { :git => "https://github.com/dcordero/Mantle.git", :tag => "1.3.1.2" }
  s.source_files = 'Mantle'
  s.framework    = 'Foundation'

  s.ios.deployment_target = '8.0' # there are usages of __weak
  s.osx.deployment_target = '10.7'
  s.watchos.deployment_target = '2.0'
  s.tvos.deployment_target = "9.0"
  s.requires_arc = true

  s.subspec 'extobjc' do |extobjc|
    extobjc.source_files   = 'Mantle/extobjc'
    extobjc.private_header_files = "Mantle/extobjc/*.h"
  end
end
