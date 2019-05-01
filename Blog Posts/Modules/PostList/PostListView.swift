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
  
  var presenter: PostListViewToPresenterProtocol?
  
  override func viewDidLoad() {
    super.viewDidLoad()
    setupView()
    addElementsInScreen()
  }
  
  func setupView() {
    view.backgroundColor = .background
    title = "Posts List"
    navigationController?.setup()
    setupBackButton()
  }
  
  func addElementsInScreen() {
    addTableView()
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
//    tableView.isHidden = true
    tableView.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    tableView.addConstraint(attribute: .top, alignElement: view.safeAreaLayoutGuide, alignElementAttribute: .top, constant: 0)
    tableView.addConstraint(attribute: .right, alignElement: view, alignElementAttribute: .right, constant: 0)
    tableView.addConstraint(attribute: .left, alignElement: view, alignElementAttribute: .left, constant: 0)
    tableView.addConstraint(attribute: .bottom, alignElement: view, alignElementAttribute: .bottom, constant: 0)
  }
  
}

// MARK: Methods of PostListPresenterToViewProtocol
extension PostListView: PostListPresenterToViewProtocol {
  
  func showPosts() {
    
  }
  
}
  
// MARK: Methods of UITableViewDelegate and UITableViewDataSource
extension PostListView: UITableViewDelegate, UITableViewDataSource {
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 10
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    if let cell = tableView.dequeueReusableCell(withIdentifier: PostListCell.identifier, for: indexPath) as? PostListCell {
      cell.setup(postTitle: "Orange carrot smoothie")
      return cell
    }
    return UITableViewCell()
  }
  
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    presenter?.goToScreenDetails()
  }
  
}
