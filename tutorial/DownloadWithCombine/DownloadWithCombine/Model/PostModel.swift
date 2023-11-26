//
//  PostModel.swift
//  DownloadWithCombine
//
//  Created by 김종혁 on 11/26/23.
//

import Foundation

struct PostModel: Identifiable, Codable {
    let userId: Int
    let id: Int
    let title: String
    let body: String
}
