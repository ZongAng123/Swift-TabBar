//
//  MainTabBarController.swift
//  TabBarPractice
//
//  Created by 纵昂 on 2021/4/2.
//

import UIKit

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        initTabBar() //初始化
    }
    
    func initTabBar() {
        let home = UINavigationController(rootViewController: HomeViewController())
        home.tabBarItem.title = "首页"
        home.tabBarItem.image = UIImage(named: "Home")
        
        let tongxun = UINavigationController(rootViewController: KongViewController())
        tongxun.tabBarItem.title = "嘻哈"
        tongxun.tabBarItem.image = UIImage(named: "tong")
        
        let cart = UINavigationController(rootViewController: MyViewController())
        cart.tabBarItem.title = "我的"
        cart.tabBarItem.image = UIImage(named: "My")
        
        viewControllers = [home,tongxun,cart]
        
        // 设置 tabBar & tabBarItem
        setTabBarItemAttributes(bgColor: UIColor(red: 0.95, green: 0.95, blue: 0.95, alpha: 1))
                
        
    }

    // 这种方式比较灵活
       func setTabBarItemAttributes(fontName: String = "Courier",
                                    fontSize: CGFloat = 14,
                                    normalColor: UIColor = .gray,
                                    selectedColor: UIColor = .red,
                                    bgColor: UIColor = .white) {
           // tabBarItem 文字大小
           var attributes: [NSAttributedString.Key: Any] = [.font: UIFont(name: fontName, size: fontSize)!]
           
           // tabBarItem 文字默认颜色
           attributes[.foregroundColor] = normalColor
           UITabBarItem.appearance().setTitleTextAttributes(attributes, for: .normal)
           
           // tabBarItem 文字选中颜色
           attributes[.foregroundColor] = selectedColor
           UITabBarItem.appearance().setTitleTextAttributes(attributes, for: .selected)
           
           // tabBar 文字、图片 统一选中高亮色
           tabBar.tintColor = selectedColor
           
           // tabBar 背景色
           tabBar.barTintColor = bgColor
       }

    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
