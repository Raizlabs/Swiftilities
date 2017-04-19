Pod::Spec.new do |s|
  s.name             = "Swiftilities"
  s.version          = "0.12.0"
  s.summary          = "A collection of useful Swift utilities."

  s.description      = <<-DESC
                        A collection of useful Swift utilities. All components and
                        extensions found in this library are consise enough on their own
                        so as to not warrant their own project.
                       DESC

  s.homepage         = "https://github.com/raizlabs/Swiftilities"
  s.license          = 'MIT'
  s.author           = { "Nicholas Bonatsakis" => "nick.bonatsakis@raizlabs.com" }
  s.source           = { :git => "https://github.com/raizlabs/Swiftilities.git", :tag => s.version.to_s }

  s.platform     = :ios, '9.0'
  s.requires_arc = true

  s.default_subspec = 'All'

  # About

  s.subspec "AboutView" do |ss|
    ss.source_files = "Pod/Classes/AboutView/*.swift"
    ss.frameworks   = ["UIKit"]
  end

  # AccessibilityHelpers

  s.subspec "AccessibilityHelpers" do |ss|
    ss.source_files = "Pod/Classes/AccessibilityHelpers/*.swift"
    ss.frameworks   = ["UIKit"]
  end

  # Acknowledgements

  s.subspec "Acknowledgements" do |ss|
    ss.dependency 'Swiftilities/LicenseFormatter'
    ss.dependency 'Swiftilities/Deselection'
    ss.source_files = "Pod/Classes/Acknowledgements/*.swift"
    ss.frameworks   = ["UIKit"]
  end

  # ColorHelpers

  s.subspec "ColorHelpers" do |ss|
    ss.source_files = "Pod/Classes/ColorHelpers/*.swift"
    ss.frameworks   = ["UIKit"]
  end

  # DataStructures

  s.subspec "DataStructures" do |ss|
    ss.source_files = "Pod/Classes/DataStructures/*.swift"
    ss.frameworks   = "Foundation"
  end

  # Deselection

  s.subspec "Deselection" do |ss|
    ss.source_files = "Pod/Classes/Deselection/*.swift"
    ss.frameworks   = ["UIKit"]
  end

  # DeviceSize

  s.subspec "DeviceSize" do |ss|
    ss.source_files = "Pod/Classes/DeviceSize/*.swift"
    ss.frameworks   = ["UIKit"]
  end

  # FormattedTextField

  s.subspec "FormattedTextField" do |ss|
    ss.source_files = "Pod/Classes/FormattedTextField/*.swift"
    ss.frameworks   = ["UIKit"]
  end

  # Forms

  s.subspec "Forms" do |ss|
    ss.source_files = "Pod/Classes/Forms/*.swift"
    ss.frameworks   = ["UIKit"]
  end

  # HairlineView

  s.subspec "HairlineView" do |ss|
    ss.source_files = "Pod/Classes/HairlineView/*.swift"
    ss.frameworks   = ["UIKit"]
  end

  # Keyboard

  s.subspec "Keyboard" do |ss|
    ss.source_files = "Pod/Classes/Keyboard/*.swift"
    ss.frameworks   = ["UIKit"]
  end

  # LicenseFormatter

  s.subspec "LicenseFormatter" do |ss|
    ss.source_files = "Pod/Classes/LicenseFormatter/*.swift"
    ss.frameworks   = "Foundation"
  end

  # Lifecycle

  s.subspec "Lifecycle" do |ss|
    ss.source_files = ["Pod/Classes/Lifecycle/*.swift"]
    ss.frameworks   = ["UIKit"]
  end

  # Logging

  s.subspec "Logging" do |ss|
    ss.source_files = "Pod/Classes/Logging/*.swift"
    ss.frameworks   = "Foundation"
  end

  # Math

  s.subspec "Math" do |ss|
    ss.source_files = "Pod/Classes/Math/*.swift"
  end

  # RootViewController

  s.subspec "RootViewController" do |ss|
    ss.source_files = "Pod/Classes/RootViewController/*.swift"
    ss.frameworks   = ["UIKit", "MessageUI"]
  end

  # StackViewHelpers

  s.subspec "StackViewHelpers" do |ss|
    ss.source_files = "Pod/Classes/StackViewHelpers/*.swift"
    ss.frameworks   = ["UIKit"]
  end

  # TintedButton

  s.subspec "TintedButton" do |ss|
    ss.source_files = "Pod/Classes/TintedButton/*.swift"
    ss.frameworks   = ["UIKit"]
  end

  # Views

  s.subspec "Views" do |ss|
    ss.source_files = ["Pod/Classes/Views/Protocols/*.swift", "Pod/Classes/Views/Textview/*.swift"]
    ss.frameworks   = ["UIKit"]
  end

  # Catch All

  s.subspec "All" do |ss|
    ss.dependency 'Swiftilities/AboutView'
    ss.dependency 'Swiftilities/AccessibilityHelpers'
    ss.dependency 'Swiftilities/Acknowledgements'
    ss.dependency 'Swiftilities/ColorHelpers'
    ss.dependency 'Swiftilities/DataStructures'
    ss.dependency 'Swiftilities/Deselection'
    ss.dependency 'Swiftilities/DeviceSize'
    ss.dependency 'Swiftilities/FormattedTextField'
    ss.dependency 'Swiftilities/Forms'
    ss.dependency 'Swiftilities/HairlineView'
    ss.dependency 'Swiftilities/Keyboard'
    ss.dependency 'Swiftilities/LicenseFormatter'
    ss.dependency 'Swiftilities/Lifecycle'
    ss.dependency 'Swiftilities/Logging'
    ss.dependency 'Swiftilities/Math'
    ss.dependency 'Swiftilities/RootViewController'
    ss.dependency 'Swiftilities/StackViewHelpers'
    ss.dependency 'Swiftilities/TintedButton'
    ss.dependency 'Swiftilities/Views'
  end

end
