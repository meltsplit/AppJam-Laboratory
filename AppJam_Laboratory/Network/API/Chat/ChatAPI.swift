//
//  ChatListService.swift
//  AppJam_Laboratory
//
//  Created by 장석우 on 2022/12/15.
//

import Foundation
import Moya


class ChatAPI : BaseAPI{
    static let shared = ChatAPI()
    private var chatProvider = MoyaProvider<ChatService>(plugins: [MoyaLoggingPlugin()])
}

extension ChatAPI{
    
    func getChatList(completion: @escaping (NetworkResult<Any>) -> Void){
        chatProvider.request(.chatList) { result in
            self.disposeNetwork(result,dataModel: ChatListResult.self ,completion: completion)
        }
    }
    
}

