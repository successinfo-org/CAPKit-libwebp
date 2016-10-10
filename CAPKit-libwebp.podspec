Pod::Spec.new do |s|
  s.name            = "CAPKit-libwebp"
  s.version         = "0.5.0"
  s.summary         = "Library to encode and decode images in WebP format."
  s.homepage        = "https://developers.google.com/speed/webp/"
  s.license         = { :type => "BSD", :file => "COPYING" }
  s.author          = "Google Inc."
  s.platform        = :ios, "7.0.0"
  s.source          = { :git => "https://github.com/successinfo-org/CAPKit-libwebp.git", :tag => "v#{s.version}" }
  s.compiler_flags  = "-D_THREAD_SAFE"

  s.subspec 'webp' do |ss|
    ss.source_files = "src/webp/*.h"
    ss.header_dir = "webp"
  end
  s.subspec 'core' do |ss|
    ss.source_files = "src/webp/*.h", "src/utils/*.{h,c}", "src/dsp/*.{h,c}", "src/enc/*.{h,c}", "src/dec/*.{h,c}"
    ss.header_dir = "webp"
  end
end