//
//  PostDetailRouter.swift
//  Blog Posts
//
//  Created by Juliano Terres on 30/04/19.
//  Copyright © 2019 Juliano Terres. All rights reserved.
//

import UIKit

// MARK: Methods of PostDetailRouterProtocol
class PostDetailRouter: PostDetailRouterProtocol {
  
  func build() -> UIViewController {
    
    let view = PostDetailView()
    
    return view
    
  }
  
}
