//
//  PostListRouter.swift
//  Blog Posts
//
//  Created by Juliano Terres on 30/04/19.
//  Copyright © 2019 Juliano Terres. All rights reserved.
//

import UIKit

// MARK: Methods of PostListRouterProtocol
class PostListRouter: PostListRouterProtocol {
  
  weak var view: UIViewController?
  
  func build() -> UIViewController {
    
    let view = PostListView()
    let presenter = PostListPresenter()
    let interactor = PostListInteractor()
    let router = PostListRouter()
    let worker = PostListWorker()
    let network = Network()
    let urlsApi = UrlsApi()
    
    view.presenter = presenter
    presenter.view = view
    presenter.router = router
    presenter.interactor = interactor
    interactor.presenter = presenter
    interactor.worker = worker
    worker.interactor = interactor
    worker.network = network
    worker.urlsApi = urlsApi
    router.view = view
    
    return view
    
  }
  
}

// MARK: Methods of PostListPresenterToRouterProtocol
extension PostListRouter: PostListPresenterToRouterProtocol {
  
  func goToScreenDetails(post: PostListPresentationEntity) {
    let postDetailView = PostDetailRouter().build(post: post)
    view?.navigationController?.pushViewController(postDetailView, animated: true)
  }
  
}


