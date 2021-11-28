//
//  TargetDependencyExtension.swift
//  ProjectDescriptionHelpers
//
//  Created by tilltue on 2021/07/16.
//

import ProjectDescription

public let targetVersion = "15.0"

// MARK: Project
public extension TargetDependency {
    static let abstractThirdParty: TargetDependency = .project(target: "AbstractThirdParty", path: .relativeToRoot("Projects/AbstractThirdParty"))
}

// MARK: Package
public extension TargetDependency {
    static let alamofire: TargetDependency = .package(product: "Alamofire")
    static let kingfisher: TargetDependency = .package(product: "Kingfisher")
    static let ribs: TargetDependency = .package(product: "RIBs")
    static let coreStore: TargetDependency = .package(product: "CoreStore")
    static let combineCocoa: TargetDependency = .package(product: "CombineCocoa")
}

public extension Package {
    static let alamofire: Package = .package(url: "https://github.com/Alamofire/Alamofire.git", .branch("master"))
    static let kingfisher: Package = .package(url: "https://github.com/onevcat/Kingfisher", from: "5.1.0")
    static let ribs: Package = .package(url: "https://github.com/uber/RIBs.git", .branch("master"))
    static let coreStore: Package = .package(url: "https://github.com/JohnEstropia/CoreStore.git", from: "8.0.1")
    static let combineCocoa: Package = .package(url: "https://github.com/CombineCommunity/CombineCocoa.git", from: "0.2.1")
}

// MARK: SourceFile
public extension SourceFilesList {
    static let sources: SourceFilesList = "Sources/**"
    static let tests: SourceFilesList = "Tests/**"
}
