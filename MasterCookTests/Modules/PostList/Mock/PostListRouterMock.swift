//
//  PostListRouterMock.swift
//  Blog PostsTests
//
//  Created by Juliano Terres on 03/05/19.
//  Copyright © 2019 Juliano Terres. All rights reserved.
//

@testable import MasterCook
import UIKit

// MARK: Methods of PostListRouterMock
class PostListRouterMock: PostListRouterProtocol {
  
  var view: UIViewController?
  var functionCalled = false
  var dataPassed: Any?
  
  func build() -> UIViewController {
    return UIViewController()
    
  }
  
}

// MARK: Methods of PostListPresenterToRouterProtocol
extension PostListRouterMock: PostListPresenterToRouterProtocol {
  
  func goToScreenDetails(post: PostListPresentationEntity) {
    functionCalled = true
    dataPassed = post
  }
  
}
