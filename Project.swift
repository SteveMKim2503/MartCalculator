import ProjectDescription
import ProjectDescriptionHelpers

/*
                +-------------+
                |             |
                |     App     | Contains MartCalculator App target and MartCalculator unit-test target
                |             |
         +------+-------------+-------+
         |         depends on         |
         |                            |
 +----v-----+                   +-----v-----+
 |          |                   |           |
 |   Kit    |                   |     UI    |   Two independent frameworks to share code and start modularising your app
 |          |                   |           |
 +----------+                   +-----------+

 */

// MARK: - Project

let targetName = "MartCalculator"

func makeTargets(name: String) -> [Target] {
    let mainTarget = Target(
        name: name,
        platform: .iOS,
        product: .app,
        bundleId: "com.MK.\(name)",
        infoPlist: .default,
        sources: ["Targets/\(name)/Sources/**"],
        resources: ["Targets/\(name)/Resources/**"],
        dependencies: [
            .package(product: "RxSwift"),
            .package(product: "RxCocoa"),
            .package(product: "SnapKit")
        ],
        settings: .settings(
            configurations: [
                .debug(name: .debug),
                .release(name: .release)
            ]
        )
    )
    let testName = "\(name)Tests"
    let testTarget = Target(
        name: testName,
        platform: .iOS,
        product: .unitTests,
        bundleId: "com.MK.\(testName)",
        infoPlist: .default,
        sources: ["Targets/\(testName)/Sources/**"],
        dependencies: [
            .target(name: name)
        ]
    )
    
    return [mainTarget, testTarget]
}

// Creates our project using a helper function defined in ProjectDescriptionHelpers
let project = Project(
    name: "MartCalculator",
    organizationName: "com.MK",
    packages: [
        Package.remote(
            url: "https://github.com/ReactiveX/RxSwift",
            requirement: .upToNextMajor(from: Version(6, 0, 0))
        ),
        Package.remote(
            url: "https://github.com/SwiftyTesseract/SwiftyTesseract",
            requirement: .upToNextMajor(from: Version(4, 0, 0))
        ),
        Package.remote(
            url: "https://github.com/SnapKit/SnapKit",
            requirement: .upToNextMajor(from: Version(5, 0, 0))
        )
    ],
    settings: .settings(
        configurations: [
            .debug(name: .debug),
            .release(name: .release)
        ]
    ),
    targets: makeTargets(name: targetName)
)
