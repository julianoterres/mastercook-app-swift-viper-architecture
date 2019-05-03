//
//  PostDetailPresenter.swift
//  Blog Posts
//
//  Created by Juliano Terres on 30/04/19.
//  Copyright © 2019 Juliano Terres. All rights reserved.
//

// MARK: Methods of PostDetailPresenter
class PostDetailPresenter: PostDetailPresenterProtocol {
  
  var view: PostDetailPresenterToViewProtocol?
  var interactor: PostDetailPresenterToInteractorProtocol?
  
}

// MARK: Methods of PostDetailViewToPresenterProtocol
extension PostDetailPresenter: PostDetailViewToPresenterProtocol {
  
  func fetchAuthor() {
    interactor?.fetchAuthor()
  }
  
}

// MARK: Methods of PostDetailInteractorToPresenterProtocol
extension PostDetailPresenter: PostDetailInteractorToPresenterProtocol {
  
  func fetchedAuthor(post: PostDetailPresentationEntity) {
    view?.showPost(postEntity: post)
  }
  
  func fetchedFail() {
    view?.showError()
  }
  
}
