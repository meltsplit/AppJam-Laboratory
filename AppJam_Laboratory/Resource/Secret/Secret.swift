//
//  Secret.swift
//  AppJam_Laboratory
//
//  Created by 장석우 on 2022/12/15.
//

import Foundation

// Secret 파일은 gitignore로 Git에 올리지 않는 파일.
// BaseURL 혹은 AccessToken 과 같이 노출되면 위험한 정보들을 저장하는 공간

struct Secret{
    static let accessToken = "Access - Token 들어갈 자리"
}
