import ProjectDescription
import ProjectDescriptionHelpers
import MyPlugin

/*
 +-------------+
 |             |
 |     App     | Contains MyApp App target and MyApp unit-test target
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

// Local plugin loaded
let localHelper = LocalHelper(name: "MyPlugin")

// Creates our project using a helper function defined in ProjectDescriptionHelpers
let project0 = Project.app(name: "MyApp",
                          destinations: .iOS,
                          additionalTargets: ["MyAppUI"]
    )


let project = Project(name: "MyApp",
                      organizationName: "tiost.io",
                      targets: [
                        Target(name: "MyApp",
                               destinations: [.iPhone],
                               product: .app,
                               bundleId: "io.tuist.MyApp",
                               deploymentTargets: .iOS("14.0"),
                               infoPlist: .default,
                               sources: ["Targets/MyApp/Sources/**",
                                         "Targets/MyAppUI/Sources/**"],
                               dependencies: [
                                .external(name: "Rating",condition: .none)
                               ]
                              ),
                        Target(name: "MyAppUI",
                               destinations: [.iPhone],
                               product: .app,
                               bundleId: "io.tuist.MyApp",
                               deploymentTargets: .iOS("14.0"),
                               infoPlist: .default,
                               sources: ["Targets/MyAppUI/Sources/**"],
                               dependencies: [
                                .external(name: "Rating",condition: .none)
                               ]
                              )

                        ]
                      )
