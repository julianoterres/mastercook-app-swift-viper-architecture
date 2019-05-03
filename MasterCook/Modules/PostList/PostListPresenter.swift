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
  var interactor: PostListPresenterToInteractorProtocol?
  
}

// MARK: Methods of PostListViewToPresenterProtocol
extension PostListPresenter: PostListViewToPresenterProtocol {
  
  func fetchPosts() {
    interactor?.fetchPosts()
  }
  
  func goToScreenDetails(post: PostListPresentationEntity) {
    router?.goToScreenDetails(post: post)
  }

}

// MARK: Methods of PostListInteractorToPresenterProtocol
extension PostListPresenter: PostListInteractorToPresenterProtocol {
  
  func fetchedPosts(posts: [PostListPresentationEntity]) {
    view?.showPosts(postList: posts)
  }
  
  func fetchedFail() {
    view?.showError()
  }

}
