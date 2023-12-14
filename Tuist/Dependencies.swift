import ProjectDescription


let dependencies = Dependencies(
    swiftPackageManager: .init(
        productTypes: [
            "Rating": .staticFramework
        ]
    ),
    platforms: [.iOS]
)
