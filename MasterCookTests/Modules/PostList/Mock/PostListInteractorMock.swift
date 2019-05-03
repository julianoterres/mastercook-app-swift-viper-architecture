//
//  PostListInteractorMock.swift
//  Blog PostsTests
//
//  Created by Juliano Terres on 03/05/19.
//  Copyright © 2019 Juliano Terres. All rights reserved.
//

@testable import MasterCook

// MARK: Methods of PostListInteractorMock
class PostListInteractorMock: PostListInteractorProtocol {
  
  weak var presenter: PostListInteractorToPresenterProtocol?
  var worker: PostListInteractorToWorkerProtocol?
  var functionCalled = false
  var dataPassed: Any?
  
}

// MARK: Methods of PostListPresenterToInteractorProtocol
extension PostListInteractorMock: PostListPresenterToInteractorProtocol {
  
  func fetchPosts() {
    functionCalled = true
  }
  
}

// MARK: Methods of PostListWorkerToInteractorProtocol
extension PostListInteractorMock: PostListWorkerToInteractorProtocol {
  
  func fetchedPosts(posts: [PostListApiEntity]) {
    functionCalled = true
    dataPassed = posts
  }
  
  func fetchedFail() {
    functionCalled = true
  }
  
}
