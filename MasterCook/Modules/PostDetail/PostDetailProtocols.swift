//
//  PostDetailProtocols.swift
//  Blog Posts
//
//  Created by Juliano Terres on 30/04/19.
//  Copyright © 2019 Juliano Terres. All rights reserved.
//

import UIKit

// MARK: Methods of View to Presenter
protocol PostDetailViewToPresenterProtocol: class {
  func fetchAuthor()
}

// MARK: Methods of PostDetailPresenterProtocol
protocol PostDetailPresenterProtocol: class {
  var view: PostDetailPresenterToViewProtocol? { get set }
  var interactor: PostDetailPresenterToInteractorProtocol? { get set }
}

// MARK: Methods of Presenter to Interactor
protocol PostDetailPresenterToInteractorProtocol: class {
  func fetchAuthor()
}

// MARK: Methods of Presenter to View
protocol PostDetailPresenterToViewProtocol: class {
  var presenter: PostDetailViewToPresenterProtocol? { get set }
  func showPost(postEntity: PostDetailPresentationEntity)
  func showError()
}

// MARK: Methods of PostDetailInteractorProtocol
protocol PostDetailInteractorProtocol: class {
  var presenter: PostDetailInteractorToPresenterProtocol?  { get set }
  var worker: PostDetailInteractorToWorkerProtocol?  { get set }
}

// MARK: Methods of Interactor to Worker
protocol PostDetailInteractorToWorkerProtocol: class {
  func fetchAuthor()
}

// MARK: Methods of Interactor to Present
protocol PostDetailInteractorToPresenterProtocol: class {
  func fetchedAuthor(post: PostDetailPresentationEntity)
  func fetchedFail()
}

// MARK: Methods of PostDetailWorkerProtocol
protocol PostDetailWorkerProtocol: class {
  var interactor: PostDetailWorkerToInteractorProtocol? { get set }
  var network: NetworkProtocol? { get set }
  var urlsApi: UrlsApi? { get set }
}

// MARK: Methods of Woker to Interactor
protocol PostDetailWorkerToInteractorProtocol: class {
  func fetchedAuthor(authors: [PostDetailAuthorApiEntity])
  func fetchedFail()
}

// MARK: Methods of PostDetailRouterProtocol
protocol PostDetailRouterProtocol: class {
  func build(post: PostListPresentationEntity) -> UIViewController
}
