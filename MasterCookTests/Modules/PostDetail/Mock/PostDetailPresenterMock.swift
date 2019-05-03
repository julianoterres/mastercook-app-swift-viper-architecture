//
//  PostDetailPresenterMock.swift
//  MasterCookTests
//
//  Created by Juliano Terres on 03/05/19.
//  Copyright © 2019 Juliano Terres. All rights reserved.
//

@testable import MasterCook

// MARK: Methods of PostDetailPresenterMock
class PostDetailPresenterMock: PostDetailPresenterProtocol {
  
  var view: PostDetailPresenterToViewProtocol?
  var interactor: PostDetailPresenterToInteractorProtocol?
  var functionCalled = false
  var dataPassed: Any?
  
}

// MARK: Methods of PostDetailViewToPresenterProtocol
extension PostDetailPresenterMock: PostDetailViewToPresenterProtocol {
  
  func fetchAuthor() {
    functionCalled = true
  }
  
}

// MARK: Methods of PostDetailInteractorToPresenterProtocol
extension PostDetailPresenterMock: PostDetailInteractorToPresenterProtocol {
  
  func fetchedAuthor(post: PostDetailPresentationEntity) {
    functionCalled = true
    dataPassed = post
  }
  
  func fetchedFail() {
    functionCalled = true
  }
  
}
