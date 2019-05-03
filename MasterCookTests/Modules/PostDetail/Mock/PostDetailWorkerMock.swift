//
//  PostDetailWorkerMock.swift
//  MasterCookTests
//
//  Created by Juliano Terres on 03/05/19.
//  Copyright © 2019 Juliano Terres. All rights reserved.
//

@testable import MasterCook

// MARK: Methods of PostDetailWorkerMock
class PostDetailWorkerMock: PostDetailWorkerProtocol {
  
  var interactor: PostDetailWorkerToInteractorProtocol?
  var network: NetworkProtocol?
  var urlsApi: UrlsApiProtocol?
  var functionCalled = false
  
}

// MARK: Methods of PostDetailInteractorToWorkerProtocol
extension PostDetailWorkerMock: PostDetailInteractorToWorkerProtocol {
  
  func fetchAuthor() {
    functionCalled = true
  }
  
}

