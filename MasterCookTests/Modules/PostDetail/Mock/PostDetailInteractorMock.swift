//
//  PostDetailInteractorMock.swift
//  MasterCookTests
//
//  Created by Juliano Terres on 03/05/19.
//  Copyright © 2019 Juliano Terres. All rights reserved.
//

@testable import MasterCook

// MARK: Methods of PostDetailInteractorMock
class PostDetailInteractorMock: PostDetailInteractorProtocol {
  
  var presenter: PostDetailInteractorToPresenterProtocol?
  var worker: PostDetailInteractorToWorkerProtocol?
  var functionCalled = false
  var dataPassed: Any?
  
}

// MARK: Methods of PostDetailPresenterToInteractorProtocol
extension PostDetailInteractorMock: PostDetailPresenterToInteractorProtocol {
  
  func fetchAuthor() {
    functionCalled = true
  }
  
}

// MARK: Methods of PostDetailWorkerToInteractorProtocol
extension PostDetailInteractorMock: PostDetailWorkerToInteractorProtocol {
  
  func fetchedAuthor(authors: [PostDetailAuthorApiEntity]) {
    functionCalled = true
    dataPassed = authors
  }
  
  func fetchedFail() {
    functionCalled = true
  }
  
}


