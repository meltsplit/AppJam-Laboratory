//
//  BaseViewController.swift
//  AppJam_Laboratory
//
//  Created by 장석우 on 2022/12/16.
//

import UIKit
import SnapKit
import Then

class BaseViewController : UIViewController{
    
    //MARK: - Properties
    
    //MARK: - UI Components
    
    //MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUI()
        setLayout()
    }
    
    //MARK: - Custom Method
    
    private func setUI(){
        view.backgroundColor = .white
    }
    
    private func setLayout(){
        
    }
    
    //MARK: - Action Method
    
    func guardFaliResult(_ result: NetworkResult<Any>) -> Any?{
        switch result{
        case .success(let data):
            print("성공했습니다.")
            return data
        case .requestErr(let message):
            presentBottomAlert(message: message as! String)
        case .pathErr:
            presentBottomAlert(message: "잘못된 경로입니다.")
        case .serverErr:
            presentBottomAlert(message: "서버 오류 혹은 메소드 오류입니다.")
        case .networkFail:
            presentBottomAlert(message: "네트워크가 불안정합니다.")
        case .decodedErr:
            presentBottomAlert(message: "디코딩 오류가 발생했습니다.")
        }
        return nil
    }
}

