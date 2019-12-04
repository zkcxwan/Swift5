//
//  BaseNavigationController.swift
//  Swift学习记录
//
//  Created by jincai on 2019/12/4.
//  Copyright © 2019年 yz. All rights reserved.
//

import UIKit

class BaseNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        UINavigationBar.appearance().backgroundColor = UIColor.purple
        UINavigationBar.appearance().tintColor = UIColor.white
    }
    

}
