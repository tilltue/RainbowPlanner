//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by tilltue on 2021/07/16.
//

import ProjectDescription
import ProjectDescriptionHelpers

let project = Project(
    name: "AbstractThirdParty",
    organizationName: "tilltue",
    packages: [
        .alamofire,
        .kingfisher,
        .coreStore
    ],
    targets: [
        Target(name: "AbstractThirdParty",
               platform: .iOS,
               product: .staticFramework,
               bundleId: "tilltue.AbstractThirdParty",
               deploymentTarget: .iOS(targetVersion: targetVersion, devices: [.iphone, .ipad]),
               infoPlist: .default,
               dependencies: [
                .alamofire,
                .kingfisher,
                .coreStore
               ])
    ]
)
