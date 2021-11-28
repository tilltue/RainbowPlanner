//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by tilltue on 2021/08/08.
//

import ProjectDescription
import ProjectDescriptionHelpers

let appInfoPlist = InfoPlist.extendingDefault(with: [
    "CFBundleShortVersionString": "1.0",
    "CFBundleVersion": "1",
    "CFBundleIdentifier": "tilltue.RainbowPlanner",
    "UILaunchScreen": [:]
])

let project = Project(
    name: "RainbowPlanner",
    organizationName: "tilltue",
    targets: [
        Target(name: "RainbowPlanner",
               platform: .iOS,
               product: .app,
               bundleId: "tilltue.RainbowPlanner",
               deploymentTarget: .iOS(targetVersion: targetVersion, devices: [.iphone, .ipad]),
               infoPlist: appInfoPlist,
               sources: .sources,
               resources: [ "Resources/**" ],
               dependencies: [
                .abstractThirdParty
               ]),
        Target(name: "RainbowPlannerTests",
               platform: .iOS,
               product: .unitTests,
               bundleId: "tilltue.RainbowPlannerTests",
               infoPlist: .default,
               sources: .tests,
               dependencies: [
                .target(name: "RainbowPlanner")
               ])
    ]
)
