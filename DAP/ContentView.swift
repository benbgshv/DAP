//
//  ContentView.swift
//  DAP
//
//  Created by Ben B on 2026-01-28.
//

import SwiftUI

struct ContentView: View {
    
    @State var selection: Int = 0
    
    let fileHandler = FileHandler.shared
     
    var body: some View {
        
        TabView(selection: $selection) {
            Tab("Library", systemImage: "ipod", value: 0) {
                LibraryView()
            }
            Tab("Playlists", systemImage: "music.note.square.stack.fill", value: 1) {
                
            }
            Tab("Settings", systemImage: "gearshape.fill", value: 2) {
                SettingsView()
            }
            Tab(value: 3, role: .search){
                
            }
        }
        
    }
}

#Preview {
    ContentView()
}
