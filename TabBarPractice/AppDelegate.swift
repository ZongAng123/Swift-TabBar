//
//  AppDelegate.swift
//  TabBarPractice
//
//  Created by 纵昂 on 2021/4/2.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.backgroundColor = .white
//     我们修改 AppDelegate.swift，让 window 的 rootViewController 为我们的 MainTabBarController：
        window?.rootViewController = MainTabBarController()
//        window?.rootViewController = UINavigationController(rootViewController: MainTabBarController()) //添加导航
        window?.makeKeyAndVisible()
        
        
        return true
    }




}

