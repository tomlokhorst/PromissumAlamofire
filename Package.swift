// swift-tools-version:5.1
import PackageDescription

let package = Package(
  name: "PromissumAlamofire",
  platforms: [
    .macOS(.v10_12), .iOS(.v10), .tvOS(.v10), .watchOS(.v3)
  ],
  products: [
    .library(name: "PromissumAlamofire", targets: ["PromissumAlamofire"]),
  ],
  dependencies: [
    .package(url: "https://github.com/tomlokhorst/Promissum.git", from: "6.0.0"),
    .package(url: "https://github.com/Alamofire/Alamofire.git", from: "5.1.0"),
  ],
  targets: [
    .target(name: "PromissumAlamofire", dependencies: ["Promissum", "Alamofire"]),
    .testTarget(name: "PromissumAlamofireTests", dependencies: ["PromissumAlamofire"]),
  ],
  swiftLanguageVersions: [.v5]
)

