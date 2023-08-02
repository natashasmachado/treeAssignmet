//
//  Bonus.swift
//  TreeAssignment
//
//  Created by Natasha Machado on 2023-08-01.
//

import Foundation

func listFiles(inDirectory directory: String, withExtension ext: String) -> [String] {
  do {
    let fileManager = FileManager.default
    let fileURLs = try fileManager.contentsOfDirectory(atPath: directory)
    return fileURLs.filter { $0.hasSuffix(ext) }
  } catch {
    print("Error while listing files: \(error)")
    return []
  }
}

let directoryPath = "/Users/natashamachado/Downloads/parent"
let inputFiles = listFiles(inDirectory: directoryPath, withExtension: ".in")
let outputFiles = listFiles(inDirectory: directoryPath, withExtension: ".out")


//
//https://stackoverflow.com/questions/35612210/search-for-all-txt-files-in-directory-swift
//https://stackoverflow.com/questions/70542801/get-the-name-of-files-within-last-directory-and-the-full-directory-path-using
//
//
//


