//
//  AppDelegate.swift
//  Blog Posts
//
//  Created by Juliano Terres on 30/04/19.
//  Copyright © 2019 Juliano Terres. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?

  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    mainScreen()
    return true
  }
  
  private func mainScreen() {
    let appRouter = AppRouter()
    let mainScreen = appRouter.buildMainScreen()
    window = UIWindow(frame: UIScreen.main.bounds)
    window?.rootViewController = mainScreen
    window?.makeKeyAndVisible()
  }

}

