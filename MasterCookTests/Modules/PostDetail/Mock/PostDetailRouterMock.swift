//
//  PostDetailRouterMock.swift
//  MasterCookTests
//
//  Created by Juliano Terres on 03/05/19.
//  Copyright © 2019 Juliano Terres. All rights reserved.
//

@testable import MasterCook
import UIKit

// MARK: Methods of PostDetailRouterMock
class PostDetailRouterMock: PostDetailRouterProtocol {
  
  var functionCalled = false
  var dataPassed: Any?
  
  func build(post: PostListPresentationEntity) -> UIViewController {
    functionCalled = true
    dataPassed = post
    return UIViewController()
  }
  
}

