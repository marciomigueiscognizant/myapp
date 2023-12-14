// swift-tools-version: 5.8
import PackageDescription


let package = Package(
    name: "RatingPackage",
    dependencies: [
        .package(url: "https://github.com/marciomigueiscognizant/rating", from: "1.0.0"),
    ]
)
