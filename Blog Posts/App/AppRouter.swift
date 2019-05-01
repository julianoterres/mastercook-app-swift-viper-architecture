//
//  AppRouter.swift
//  Blog Posts
//
//  Created by Juliano Terres on 30/04/19.
//  Copyright © 2019 Juliano Terres. All rights reserved.
//

import UIKit

class AppRouter {
  
  func buildMainScreen() -> UIViewController {
    
    let navigation = UINavigationController()
    let postListView = PostListRouter().build()
    
    navigation.viewControllers = [postListView]
    
    return navigation
    
  }
  
}
