//
//  PostListPresenterMock.swift
//  Blog PostsTests
//
//  Created by Juliano Terres on 03/05/19.
//  Copyright © 2019 Juliano Terres. All rights reserved.
//

@testable import MasterCook

// MARK: Methods of PostListPresenterMock
class PostListPresenterMock: PostListPresenterProtocol {
  
  weak var view: PostListPresenterToViewProtocol?
  var router: PostListPresenterToRouterProtocol?
  var interactor: PostListPresenterToInteractorProtocol?
  var functionCalled = false
  var dataPassed: Any?
  
}

// MARK: Methods of PostListViewToPresenterProtocol
extension PostListPresenterMock: PostListViewToPresenterProtocol {
  
  func fetchPosts() {
    functionCalled = true
  }
  
  func goToScreenDetails(post: PostListPresentationEntity) {
    functionCalled = true
    dataPassed = post
  }
  
}

// MARK: Methods of PostListInteractorToPresenterProtocol
extension PostListPresenterMock: PostListInteractorToPresenterProtocol {
  
  func fetchedPosts(posts: [PostListPresentationEntity]) {
    functionCalled = true
    dataPassed = posts
  }
  
  func fetchedFail() {
    functionCalled = true
  }
  
}
