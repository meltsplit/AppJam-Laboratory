//
//  ChatListResult.swift
//  AppJam_Laboratory
//
//  Created by 장석우 on 2022/12/15.
//

import Foundation

struct ChatListResult: Codable {
    let imageUrl: String
    let chatInfo: [ChatInfo]
}

struct ChatInfo: Codable {
    let chatImage: String
    let name: String
    let content: String
    let updatedAt: String
}
