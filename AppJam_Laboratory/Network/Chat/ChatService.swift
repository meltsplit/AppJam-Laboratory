//
//  ChatListService.swift
//  AppJam_Laboratory
//
//  Created by 장석우 on 2022/12/15.
//

import Foundation
import Moya

enum ChatService{
    case chatList
}

extension ChatService: BaseTargetType{
    var path: String {
        switch self{
        case .chatList:
            return "/chat/list"
        }
    }
    
    var method: Moya.Method {
        switch self{
        case .chatList:
            return .get
        }
    }
    
    var task: Moya.Task {
        switch self{
        case .chatList:
            return .requestPlain
        }
    }
    
    var headers: [String : String]?{
        switch self{
        case .chatList:
            return APIEnvironment.noTokenHeader
        }
    }
}
