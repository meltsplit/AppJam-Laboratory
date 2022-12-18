//
//  BaseTabViewController.swift
//  AppJam_Laboratory
//
//  Created by 장석우 on 2022/12/18.
//

import Foundation
import UIKit

class BaseTabBarController: UITabBarController {

    let musicRegisterVC = MusicRegisterViewController()
    let musicListVC = MusicListViewController()
    let signUpVC = SignUpViewController()
    let signInVC = SignInViewController()
    let chatListVC = ChatListViewController()
    
    //MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUI()
        setViewController()
        selectedIndex = 4
       
    }
    
    override func viewDidLayoutSubviews() {
        tabBar.frame.size.height = 90
        tabBar.frame.origin.y = view.frame.height - 90
    }
    
    //MARK: - Custom Method
    
    private func setUI(){
        tabBar.backgroundColor = .white
        tabBar.tintColor = .black
    }
    
    private func setViewController(){
        
        musicRegisterVC.tabBarItem = UITabBarItem(title: "뮤직1",
                                           image: UIImage(systemName: "music.note.list"),
                                           selectedImage: UIImage(systemName: "music.note.list.fill"))
        
        musicListVC.tabBarItem = UITabBarItem(title: "뮤직2",
                                         image: UIImage(systemName: "music.note"),
                                         selectedImage: UIImage(systemName: "music.note"))
        
        signUpVC.tabBarItem = UITabBarItem(title: "회원가입",
                                         image: UIImage(systemName: "person.circle"),
                                         selectedImage: UIImage(systemName: "person.circle.fill"))
        
        signInVC.tabBarItem = UITabBarItem(title: "로그인",
                                         image: UIImage(systemName: "person"),
                                         selectedImage: UIImage(systemName: "person.fill"))
        
        chatListVC.tabBarItem = UITabBarItem(title: "채팅",
                                         image: UIImage(systemName: "bubble.left"),
                                         selectedImage: UIImage(systemName: "bubble.left.fill"))
        
        viewControllers = [musicRegisterVC,musicListVC,signUpVC,signInVC,chatListVC]
    }

}


