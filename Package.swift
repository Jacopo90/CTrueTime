// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "CTrueTime",
    products: [
        .library(name: "CTrueTime", targets: ["CTrueTime"])
    ],
    targets: [
        .systemLibrary(
            name: "CTrueTime",
            pkgConfig: "truetime"
        )
    ]
)
