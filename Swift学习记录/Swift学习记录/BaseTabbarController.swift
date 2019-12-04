//
//  BaseTabbarController.swift
//  Swift学习记录
//
//  Created by jincai on 2019/12/4.
//  Copyright © 2019年 yz. All rights reserved.
//

import UIKit

class BaseTabbarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let tabbar = UITabBar.appearance()
        tabbar.isTranslucent = false
        tabbar.tintColor = UIColor.red
        
        self.addChildController()
    }
    
    func addChildController() {
        
        setChildViewController(MainViewController (), title: "主页", image: "home_tabbar_32x32_", selectImage: "home_tabbar_press_32x32_")
        setChildViewController(UIViewController (), title: "", image:"", selectImage:"")
        setChildViewController(MineViewController (), title: "我的", image: "mine_tabbar_32x32_", selectImage: "mine_tabbar_press_32x32_")
    }
    
    func setChildViewController (_ childVc:UIViewController, title :String , image :String, selectImage:String ) {
        childVc.title = title
        childVc.tabBarItem.image = UIImage(named: image)
        childVc.tabBarItem.selectedImage = UIImage (named: selectImage)

        let nav = BaseNavigationController(rootViewController:childVc)
        addChild(nav)
    }
    
    func addMidBtn() {
        let btn = UIButton()
        btn.imageView?.image = UIImage(named:"")

    }
}
