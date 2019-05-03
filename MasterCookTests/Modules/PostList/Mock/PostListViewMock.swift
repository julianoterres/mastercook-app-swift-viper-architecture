//
//  PostListViewMock.swift
//  Blog PostsTests
//
//  Created by Juliano Terres on 03/05/19.
//  Copyright © 2019 Juliano Terres. All rights reserved.
//

@testable import MasterCook
import UIKit

// MARK: Methods of PostListView
class PostListViewMock: UIViewController {
  
  var presenter: PostListViewToPresenterProtocol?
  var functionCalled = false
  var dataPassed: Any?
  
}

// MARK: Methods of PostListPresenterToViewProtocol
extension PostListViewMock: PostListPresenterToViewProtocol {
  
  func showPosts(postList: [PostListPresentationEntity]) {
    functionCalled = true
    dataPassed = postList
  }
  
  func showError() {
    functionCalled = true
  }
  
}

// MARK: Methods of ErrorViewProtocol
extension PostListViewMock: ErrorViewProtocol {
  
  func didPressRetry() {
    functionCalled = true
  }
  
}
