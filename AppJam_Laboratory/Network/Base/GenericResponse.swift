//
//  General Response.swift
//  AppJam_Laboratory
//
//  Created by 장석우 on 2022/12/15.
//

import Foundation

struct GenericResponse<T: Codable>: Codable {
    var statusCode: Int
    var success: Bool
    var message: String?
    var data: T?
    
    enum CodingKeys: String, CodingKey {
        case statusCode
        case success
        case message
        case data
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        message = (try? values.decode(String.self, forKey: .message)) ?? ""
        success = (try? values.decode(Bool.self, forKey: .success)) ?? false
        data = (try? values.decode(T.self, forKey: .data)) ?? nil
        statusCode = (try? values.decode(Int.self, forKey: .statusCode)) ?? 0
    }
}
