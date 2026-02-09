//
//  MusicIndexer.swift
//  DAP
//
//  Created by Ben B on 2026-02-05.
//

import Foundation

class FileHandler {
    
    static let shared = FileHandler()
    
    let fileManager = FileManager.default
    let documentsFolder: URL
    
    init() {
        documentsFolder = fileManager.urls(for: .documentDirectory, in: .userDomainMask).first!
        instructionFile()
    }
    
    func instructionFile() { //Check if the instruction file already exists, else create it
        let instructionURL = documentsFolder.appending(path: "Drop music files into this folder")
        
        if !fileManager.fileExists(atPath: instructionURL.path) {
            fileManager.createFile(atPath: instructionURL.path, contents: nil)
        }
    }
}
