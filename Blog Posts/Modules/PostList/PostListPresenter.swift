//
//  PostListPresenter.swift
//  Blog Posts
//
//  Created by Juliano Terres on 30/04/19.
//  Copyright © 2019 Juliano Terres. All rights reserved.
//

// MARK: Methods of PostListPresenter
class PostListPresenter: PostListPresenterProtocol {
  
  weak var view: PostListPresenterToViewProtocol?
  var router: PostListPresenterToRouterProtocol?
  
}

// MARK: Methods of PostListViewToPresenterProtocol
extension PostListPresenter: PostListViewToPresenterProtocol {
  
  func goToScreenDetails() {
    router?.goToScreenDetails()
  }
  
}
