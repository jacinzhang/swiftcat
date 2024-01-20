// The Swift Programming Language
// https://docs.swift.org/swift-book


import Foundation
import ArgumentParser

@main
struct ReadFile: ParsableCommand {
    static var configuration: CommandConfiguration {
        let conf = CommandConfiguration(commandName: "swiftcat")
        return conf
    }
    
    @Argument(help: "文件路径")
    var filePath: String
    
    // 读取文件内容
    func run() throws {
        let fileContents = try String(contentsOfFile: filePath, encoding: .utf8)
        print(fileContents)
    }
}
