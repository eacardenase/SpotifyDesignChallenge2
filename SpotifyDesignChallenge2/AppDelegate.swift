//
//  AppDelegate.swift
//  SpotifyDesignChallenge2
//
//  Created by Edwin Cardenas on 3/24/23.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        window?.backgroundColor = .white
        
        let navigationController = UINavigationController(rootViewController: ViewController())
        
        window?.rootViewController = navigationController
        
        return true
    }

}

