//
//  AlbumDetail.swift
//  SwiftUI
//
//  Created by Jesse on 2020/3/22.
//  Copyright © 2020 Jesse. All rights reserved.
//

import SwiftUI

struct AlbumDetailView: View {
    var album: Album
    @State var zoom = false
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            Image(album.albumCover)
                .resizable()
                .aspectRatio(contentMode: zoom ? ContentMode.fill : ContentMode.fit)
                .navigationBarTitle(Text(album.albumName), displayMode: .inline)
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
                .onTapGesture {
                    withAnimation (.default) {
                        self.zoom.toggle()
                    }
            }
            if !zoom {
                Text(album.albumName)
                    .font(.largeTitle)
                    .foregroundColor(.secondary)
                    .padding()
                    .transition(.move(edge: .trailing))
            }
        }
        
    }
}

struct AlbumDetail_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            NavigationView {
                AlbumDetailView(album: albums[0])
            }
            NavigationView {
                AlbumDetailView(album: albums[1])
            }
        }
        
    }
}
