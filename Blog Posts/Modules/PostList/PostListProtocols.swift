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
  func goToScreenDetails()
}

// MARK: Methods of PostListPresenterProtocol
protocol PostListPresenterProtocol: class {
  var view: PostListPresenterToViewProtocol? { get set }
  var router: PostListPresenterToRouterProtocol? { get set }
}

// MARK: Methods of Presenter to View
protocol PostListPresenterToViewProtocol: class {
  var presenter: PostListViewToPresenterProtocol? { get set }
  func showPosts()
}


// MARK: Methods of Presenter to Router
protocol PostListPresenterToRouterProtocol: class {
  func goToScreenDetails()
}

// MARK: Methods of PostListRouterProtocol
protocol PostListRouterProtocol: class {
  var view: UIViewController? { get set }
  func build() -> UIViewController
}
