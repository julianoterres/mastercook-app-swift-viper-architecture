//
//  PostListWorkerMock.swift
//  Blog PostsTests
//
//  Created by Juliano Terres on 03/05/19.
//  Copyright © 2019 Juliano Terres. All rights reserved.
//

@testable import MasterCook

// MARK: Methods of PostListWorkerMock
class PostListWorkerMock: PostListWorkerProtocol {
  
  weak var interactor: PostListWorkerToInteractorProtocol?
  var network: NetworkProtocol?
  var urlsApi: UrlsApiProtocol?
  var functionCalled = false
  
}

// MARK: Methods of PostListInteractorToWorkerProtocol
extension PostListWorkerMock: PostListInteractorToWorkerProtocol {
  
  func fetchPosts() {
    functionCalled = true
  }
  
}
