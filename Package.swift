// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "TrueTime",
    products: [
        // Questo è il prodotto che la tua app importerà
        .library(
            name: "TrueTime",
            targets: ["TrueTime"]
        ),
    ],
    dependencies: [
        // La tua dipendenza Alamofire (se ti serve nel progetto)
        .package(url: "https://github.com/Alamofire/Alamofire.git", exact: "5.11.1")
    ],
    targets: [
        // 1. Il target in C (CTrueTime)
        .target(
            name: "CTrueTime",
            dependencies: [],
            path: "Sources/CTrueTime" // Assicurati che il path sia corretto
        ),
        // 2. Il target in Swift (TrueTime) che DIPENDE da CTrueTime
        .target(
            name: "TrueTime",
            dependencies: [
                "CTrueTime",
                .product(name: "Alamofire", package: "Alamofire")
            ],
            path: "Sources/TrueTime"
        ),
        // Target di test (opzionale)
        .testTarget(
            name: "TrueTimeTests",
            dependencies: ["TrueTime"]
        )
    ]
)
