//
//  PostDetailRouter.swift
//  Blog Posts
//
//  Created by Juliano Terres on 30/04/19.
//  Copyright © 2019 Juliano Terres. All rights reserved.
//

import UIKit

// MARK: Methods of PostDetailRouter
class PostDetailRouter: PostDetailRouterProtocol {
  
  func build(post: PostListPresentationEntity) -> UIViewController {
    
    let view = PostDetailView()
    let presenter = PostDetailPresenter()
    let interactor = PostDetailInteractor()
    let worker = PostDetailWorker()
    let network = Network()
    let urlsApi = UrlsApi()
    
    view.presenter = presenter
    presenter.view = view
    presenter.interactor = interactor
    interactor.presenter = presenter
    interactor.worker = worker
    interactor.post = post
    worker.interactor = interactor
    worker.network = network
    worker.urlsApi = urlsApi
    
    return view
    
  }
  
}
