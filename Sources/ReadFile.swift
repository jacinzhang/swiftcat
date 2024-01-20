// The Swift Programming Language
// https://docs.swift.org/swift-book


import Foundation
import ArgumentParser

@main
struct ReadFile: ParsableCommand {
    @Argument(help: "文件路径")
    var filePath: String
    
    // 读取文件内容
    func run() throws {
        let fileContents = try String(contentsOfFile: filePath, encoding: .utf8)
        print(fileContents)
    }
}

struct Repeat: ParsableCommand {
    @Flag(help: "Include a counter with each repetition.")
    var includeCounter = false

    @Option(name: .shortAndLong, help: "The number of times to repeat 'phrase'.")
    var count: Int? = nil

    @Argument(help: "The phrase to repeat.")
    var phrase: String

    mutating func run() throws {
        let repeatCount = count ?? 2

        for i in 1...repeatCount {
            if includeCounter {
                print("\(i): \(phrase)")
            } else {
                print(phrase)
            }
        }
    }
}
