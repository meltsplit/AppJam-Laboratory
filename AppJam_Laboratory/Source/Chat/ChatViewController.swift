//
//  ViewController.swift
//  AppJam_Laboratory
//
//  Created by 장석우 on 2022/12/13.
//


import UIKit
import SnapKit
import Then

class ChatListViewController : BaseViewController{
    
    //MARK: - Properties
    
    private let chatListButton = UIButton()
    private let chatImageView = UIImageView()
    
    //MARK: - UI Components
    
    //MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUI()
        setLayout()
    }
    
    
    //MARK: - Custom Method
    
    private func setUI(){
        chatListButton.do {
            $0.setTitle("채팅 리스트 API 통신합니다.", for: .normal)
            $0.backgroundColor = .orange
            $0.layer.cornerRadius = 15
            $0.addTarget(self, action: #selector(chatListButtonDidTap), for: .touchUpInside)
        }
        
        chatImageView.do {
            $0.contentMode = .scaleAspectFit
        }
    }
    
    private func setLayout(){
        view.addSubview(chatListButton)
        view.addSubview(chatImageView)
        
        chatListButton.snp.makeConstraints {
            $0.bottom.equalToSuperview().inset(100)
            $0.leading.trailing.equalToSuperview().inset(30)
            $0.height.equalTo(50)
        }
        
        chatImageView.snp.makeConstraints {
            $0.top.equalTo(200)
            $0.centerX.equalToSuperview()
            $0.height.equalTo(100)
        }
    }
    
    private func getChatList(){
        ChatAPI.shared.getChatList { result in
            guard let result = self.successOrToast(result) as? ChatListResult else { return }
            
            
            print(result.imageUrl)
            let url = URL(string: result.imageUrl)
                    DispatchQueue.global().async { [weak self] in
                        if let data = try? Data(contentsOf: url!) {
                            if let image = UIImage(data: data) {
                                DispatchQueue.main.async {
                                    self?.chatImageView.image = image
                                }
                            }
                        }
                    }
        }
        
        
    }
    
    
    //MARK: - Action Method
    
    @objc func chatListButtonDidTap(){
        print("API 연결 시도합니다")
        getChatList()
    }
    
}

