//
//  Album.swift
//  SwiftUI
//
//  Created by Jesse on 2020/3/22.
//  Copyright © 2020 Jesse. All rights reserved.
//

import Foundation

struct Album: Identifiable {
    var id = UUID()
    var albumName: String
    var albumArtist: String
    var englishName: String
    
    var albumCover: String
}

let albums = [
    Album(albumName: "听说", albumArtist: "JJ", englishName: "tingshuo", albumCover: "album_001"),
    Album(albumName: "Red", albumArtist: "Swift", englishName: "Red", albumCover: "album_002"),
    Album(albumName: "MySecret", albumArtist: "MySecret", englishName: "MySecret", albumCover: "album_003"),
    Album(albumName: "江南", albumArtist: "JJ", englishName: "jiang nan", albumCover: "album_004"),
    Album(albumName: "习惯", albumArtist: "卓文萱", englishName: "xi guan", albumCover: "album_005"),
    Album(albumName: "The moment", albumArtist: "孙燕姿", englishName: "The moment", albumCover: "album_006"),
    Album(albumName: "FF", albumArtist: "范玮琪", englishName: "FF", albumCover: "album_007"),
    Album(albumName: "十八般武艺", albumArtist: "王力宏", englishName: "wu yi", albumCover: "album_008"),
    Album(albumName: "我不要在比了", albumArtist: "刘明湘", englishName: "wo bu yao", albumCover: "album_009"),
]
