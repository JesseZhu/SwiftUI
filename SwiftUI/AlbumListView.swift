//
//  ContentView.swift
//  SwiftUI
//
//  Created by Jesse on 2020/3/22.
//  Copyright © 2020 Jesse. All rights reserved.
//

import SwiftUI

struct AlbumListView: View {
    var body: some View {
        VStack {
            NavigationView {
                List(albums) {album in
                    NavigationLink(destination: AlbumDetailView(album: album)) {
                        HStack {
                            Image(album.albumCover)
                                .resizable()
                                .frame(width: 50, height: 50, alignment: .center)
                                .aspectRatio(contentMode: ContentMode.fill)
                            VStack(alignment: .leading) {
                                Text(album.albumName)
                                Text(album.albumArtist)
                                    .font(.subheadline)
                                    .foregroundColor(.secondary)
                            }
                        }
                    }
                }.navigationBarTitle(Text("Albums")).font(.headline)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        AlbumListView()
    }
}
