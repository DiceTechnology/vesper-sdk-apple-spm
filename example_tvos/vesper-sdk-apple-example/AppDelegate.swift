//
//  AppDelegate.swift
//  vesper-sdk-apple-example
//
//  Created by Yaroslav Lvov on 09.08.2024.
//  Copyright © 2024 Endeavor Streaming. All rights reserved.
//

import UIKit
@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = UIViewController()
        window?.makeKeyAndVisible()
                
        if let path = Bundle.main.path(forResource: "VesperSDK_VesperSDKWrapperTvOS", ofType: "bundle"), let bundle = Bundle(path: path) {
            let image = UIImage(named: "tvos-tracks", in: bundle, compatibleWith: nil)?
                .withRenderingMode(.alwaysTemplate)
            print("zzz tvos", image)
        }
        if let path = Bundle.main.path(forResource: "VesperSDK_VesperSDKWrapper", ofType: "bundle"), let bundle = Bundle(path: path) {
            let vodImage = UIImage(named: "ios-fast-forward", in: bundle, compatibleWith: nil)?.withRenderingMode(.alwaysOriginal)
            print("zzz ios", vodImage)
        }
        
        return true
    }
}
