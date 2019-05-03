//
//  PostListProtocols.swift
//  Blog Posts
//
//  Created by Juliano Terres on 30/04/19.
//  Copyright © 2019 Juliano Terres. All rights reserved.
//

import UIKit

// MARK: Methods of View to Presenter
protocol PostListViewToPresenterProtocol: class {
  func fetchPosts()
  func goToScreenDetails(post: PostListPresentationEntity)
}

// MARK: Methods of PostListPresenterProtocol
protocol PostListPresenterProtocol: class {
  var view: PostListPresenterToViewProtocol? { get set }
  var router: PostListPresenterToRouterProtocol? { get set }
  var interactor: PostListPresenterToInteractorProtocol? { get set }
}

// MARK: Methods of Presenter to Interactor
protocol PostListPresenterToInteractorProtocol: class {
  func fetchPosts()
}

// MARK: Methods of Presenter to View
protocol PostListPresenterToViewProtocol: class {
  var presenter: PostListViewToPresenterProtocol? { get set }
  func showPosts(postList: [PostListPresentationEntity])
  func showError()
}

// MARK: Methods of Presenter to Router
protocol PostListPresenterToRouterProtocol: class {
  func goToScreenDetails(post: PostListPresentationEntity)
}

// MARK: Methods of PostListInteractorProtocol
protocol PostListInteractorProtocol: class {
  var presenter: PostListInteractorToPresenterProtocol?  { get set }
  var worker: PostListInteractorToWorkerProtocol?  { get set }
}

// MARK: Methods of Interactor to Worker
protocol PostListInteractorToWorkerProtocol: class {
  func fetchPosts()
}

// MARK: Methods of Interactor to Present
protocol PostListInteractorToPresenterProtocol: class {
  func fetchedPosts(posts: [PostListPresentationEntity])
  func fetchedFail()
}

// MARK: Methods of PostListWorkerProtocol
protocol PostListWorkerProtocol: class {
  var interactor: PostListWorkerToInteractorProtocol? { get set }
  var network: NetworkProtocol? { get set }
  var urlsApi: UrlsApiProtocol? { get set }
}

// MARK: Methods of Woker to Interactor
protocol PostListWorkerToInteractorProtocol: class {
  func fetchedPosts(posts: [PostListApiEntity])
  func fetchedFail()
}

// MARK: Methods of PostListRouterProtocol
protocol PostListRouterProtocol: class {
  var view: UIViewController? { get set }
  func build() -> UIViewController
}
