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
    let router = PostListRouter()
    
    view.presenter = presenter
    presenter.view = view
    presenter.router = router
    router.view = view
    
    return view
    
  }
  
}

// MARK: Methods of PostListPresenterToRouterProtocol
extension PostListRouter: PostListPresenterToRouterProtocol {
  
  func goToScreenDetails() {
    let postDetailView = PostDetailRouter().build()
    view?.navigationController?.pushViewController(postDetailView, animated: true)
  }
  
}


