//
//  LibraryView.swift
//  DAP
//
//  Created by Ben B on 2026-01-28.
//

import SwiftUI

struct Media: View {
    var body: some View {
        VStack(alignment: .leading) {
            Button {
                
            } label: {
                Text("No Picture")
                    .frame(width: 144, height: 144)
                    .background(Color.gray)
                    .cornerRadius(12)
            }
            .buttonStyle(PlainButtonStyle())
            Text("Song").font(.headline)
            Text("Artist").font(.subheadline).foregroundStyle(Color.secondary)
        }.padding(.bottom, 12)
    }
}

struct Playlist: View {
    var body: some View {
        VStack(alignment: .leading) {
            Button {
                
            } label: {
                Text("No Picture")
                    .frame(width: 176, height: 176)
                    .background(Color.gray)
                    .cornerRadius(12)
            }
            .buttonStyle(PlainButtonStyle())
            Text("Playlist")
                .font(.headline)
        }
    }
}

struct LibraryView: View {
    
    var body: some View {
        
        NavigationStack {
            List{
                VStack(alignment: .leading) {
                    
                    //Start recently added section
                    Text("Recently Added")
                        .font(.title2.bold())
                        .padding(.horizontal, 16)
                        .padding(.top, 8)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHGrid(rows: [GridItem()], spacing: 12) {
                            ForEach(0..<5) { _ in
                                Media()
                            }
                        }
                    }
                    .contentMargins(.horizontal, 16)
                    .frame(maxHeight: .infinity)
                    
                    Divider()
                        .padding(.horizontal, 20)
                    
                }
                .listRowInsets(EdgeInsets())
                .listRowSeparator(.hidden)
                
                //Start category section
                NavigationLink(destination: Text("Test")) {
                    Label("Songs", systemImage: "music.note")
                }
                NavigationLink(destination: Text("Test")) {
                    Label("Albums", systemImage: "music.note.square.stack.fill")
                }
                NavigationLink(destination: Text("Test")) {
                    Label("Artists", systemImage: "person.fill")
                }
                NavigationLink(destination: Text("Test")) {
                    Label("Favourites", systemImage: "star.fill")
                }
    
                //Start playlist section
                VStack(alignment: .leading) {
                    Text("Playlists")
                        .font(.title2.bold())
                    LazyVGrid(columns: [GridItem(.adaptive(minimum: 170, maximum: 200))], spacing: 12) {
                        ForEach(0..<5) { _ in
                            Playlist()
                        }
                    }
                }
                .listRowSeparator(.hidden)
                
            }
            //Start toolbar section
            .listStyle(.plain)
            .navigationTitle("Library")
            .toolbarTitleDisplayMode(.inlineLarge)
            .toolbar {
                ToolbarItem(placement: .topBarTrailing){
                    Button {
                        
                    } label: {
                        Image(systemName: "arrow.clockwise")
                    }
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        
                    } label: {
                        Image(systemName: "ellipsis")
                    }
                }
            }.scrollIndicators(.hidden)
        }
    }
}

#Preview {
    LibraryView()
}
