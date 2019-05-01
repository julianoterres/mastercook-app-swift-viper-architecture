//
//  PostListView.swift
//  Blog Posts
//
//  Created by Juliano Terres on 30/04/19.
//  Copyright © 2019 Juliano Terres. All rights reserved.
//

import UIKit

// MARK: Methods of PostListView
class PostListView: UIViewController {
  
  let tableView = UITableView()
  let loader = UIActivityIndicatorView()
  let errorView = ErrorView()
  
  var presenter: PostListViewToPresenterProtocol?
  var posts: [PostListPresentationEntity] = []
  
  override func viewDidLoad() {
    super.viewDidLoad()
    setupView()
    addElementsInScreen()
    presenter?.fetchPosts()
  }
  
  func setupView() {
    view.backgroundColor = .background
    title = "Posts List"
    navigationController?.setup()
    setupBackButton()
  }
  
  func addElementsInScreen() {
    addLoader()
    addErrorView()
    addTableView()
  }
  
  func addLoader() {
    view.addSubview(loader)
    loader.color = .black
    loader.startAnimating()
    loader.addConstraint(attribute: .centerX, alignElement: view, alignElementAttribute: .centerX, constant: 0)
    loader.addConstraint(attribute: .centerY, alignElement: view, alignElementAttribute: .centerY, constant: 0)
    loader.addConstraint(attribute: .height, alignElement: nil, alignElementAttribute: .notAnAttribute, constant: 20)
    loader.addConstraint(attribute: .width, alignElement: nil, alignElementAttribute: .notAnAttribute, constant: 20)
  }
  
  func addTableView() {
    view.addSubview(tableView)
    tableView.delegate = self
    tableView.dataSource = self
    tableView.register(PostListCell.self, forCellReuseIdentifier: PostListCell.identifier)
    tableView.estimatedRowHeight = PostListCell.height
    tableView.rowHeight = UITableView.automaticDimension
    tableView.separatorStyle = .none
    tableView.backgroundColor = .background
    tableView.isHidden = true
    tableView.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    tableView.addConstraint(attribute: .top, alignElement: view.safeAreaLayoutGuide, alignElementAttribute: .top, constant: 0)
    tableView.addConstraint(attribute: .right, alignElement: view, alignElementAttribute: .right, constant: 0)
    tableView.addConstraint(attribute: .left, alignElement: view, alignElementAttribute: .left, constant: 0)
    tableView.addConstraint(attribute: .bottom, alignElement: view, alignElementAttribute: .bottom, constant: 0)
  }
  
  func addErrorView() {
    view.addSubview(errorView)
    errorView.addConstraint(attribute: .centerX, alignElement: view, alignElementAttribute: .centerX, constant: 0)
    errorView.addConstraint(attribute: .centerY, alignElement: view, alignElementAttribute: .centerY, constant: 0)
    errorView.isHidden = true
    errorView.setup(title: "Oops! We had an unforeseen!", text: "Unfortunately we were unable to process\nyour request, please try again.", delegate: self)
  }
  
}

// MARK: Methods of PostListPresenterToViewProtocol
extension PostListView: PostListPresenterToViewProtocol {
  
  func showPosts(postList: [PostListPresentationEntity]) {
    posts = postList
    tableView.reloadData()
    tableView.isHidden = false
    errorView.isHidden = true
  }
  
  func showError() {
    tableView.isHidden = true
    errorView.isHidden = false
  }
  
}

// MARK: Methods of ErrorViewProtocol
extension PostListView: ErrorViewProtocol {
  
  func didPressRetry() {
    errorView.isHidden = true
    presenter?.fetchPosts()
  }

}
  
// MARK: Methods of UITableViewDelegate and UITableViewDataSource
extension PostListView: UITableViewDelegate, UITableViewDataSource {
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return posts.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    if let cell = tableView.dequeueReusableCell(withIdentifier: PostListCell.identifier, for: indexPath) as? PostListCell {
      cell.setup(post: posts[indexPath.row])
      return cell
    }
    return UITableViewCell()
  }
  
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    presenter?.goToScreenDetails(post: posts[indexPath.row])
  }
  
}
