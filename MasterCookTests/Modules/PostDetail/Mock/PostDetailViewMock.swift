//
//  PostDetailViewMock.swift
//  MasterCookTests
//
//  Created by Juliano Terres on 03/05/19.
//  Copyright © 2019 Juliano Terres. All rights reserved.
//

@testable import MasterCook
import UIKit

// MARK: Methods of PostDetailViewMock
class PostDetailViewMock: UIViewController {
  
  var presenter: PostDetailViewToPresenterProtocol?
  var functionCalled = false
  var dataPassed: Any?
  
}

// MARK: Methods of ErrorViewProtocol
extension PostDetailViewMock: ErrorViewProtocol {
  
  func didPressRetry() {
    functionCalled = true
  }
  
}

// MARK: Methods of PostDetailPresenterToViewProtocol
extension PostDetailViewMock: PostDetailPresenterToViewProtocol {
  
  func showPost(postEntity: PostDetailPresentationEntity) {
    functionCalled = true
    dataPassed = postEntity
  }
  
  func showError() {
    functionCalled = true
  }
  
}
