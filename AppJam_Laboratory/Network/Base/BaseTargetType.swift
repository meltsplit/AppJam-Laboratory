//
//  BaseTargerType.swift
//  AppJam_Laboratory
//
//  Created by 장석우 on 2022/12/15.
//

import Foundation
import Moya

protocol BaseTargetType: TargetType{ }

extension BaseTargetType{
    var baseURL: URL{
        return URL(string: "http://3.34.53.11:8080")!
    }
    
    var headers: [String : String]?{
        return APIEnvironment.noTokenHeader
    }
    
}
