//
//  PostDetailView.swift
//  Blog Posts
//
//  Created by Juliano Terres on 30/04/19.
//  Copyright © 2019 Juliano Terres. All rights reserved.
//

import UIKit

// MARK: Methods of PostDetailView
class PostDetailView: UIViewController {
  
  let contentView = UIView()
  let scrollView = UIScrollView()
  let imageTop = UIImageView()
  let titleLabel = UILabel()
  let textLabel = UILabel()
  let authorContainer = UIView()
  let authorImage = UIImageView()
  let authorTextContainer = UIView()
  let authorName = UILabel()
  let authorEmail = UILabel()
  let errorView = ErrorView()
  let loader = UIActivityIndicatorView()
  
  var presenter: PostDetailViewToPresenterProtocol?
  var post: PostDetailPresentationEntity!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    setupView()
    addElementsInScreen()
    presenter?.fetchAuthor()
  }
  
  func setupView() {
    view.backgroundColor = .background
    navigationController?.transparent()
  }
  
  func addElementsInScreen() {
    addLoader()
    addErrorView()
    addContentView()
    addImageTop()
    addSrcrollView()
    addTitleLabel()
    addTextLabel()
    addAuthorContainer()
    addAuthorImage()
    addAuthorTextContainer()
    addAuthorName()
    addAuthorEmail()
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
  
  func addErrorView() {
    view.addSubview(errorView)
    errorView.addConstraint(attribute: .centerX, alignElement: view, alignElementAttribute: .centerX, constant: 0)
    errorView.addConstraint(attribute: .centerY, alignElement: view, alignElementAttribute: .centerY, constant: 0)
    errorView.isHidden = true
    errorView.setup(title: "Oops! We had an unforeseen!", text: "Unfortunately we were unable to process\nyour request, please try again.", delegate: self)
  }
  
  func addContentView() {
    view.addSubview(contentView)
    contentView.backgroundColor = .background
    contentView.isHidden = true
    contentView.addConstraint(attribute: .top, alignElement: view, alignElementAttribute: .top, constant: 0)
    contentView.addConstraint(attribute: .right, alignElement: view, alignElementAttribute: .right, constant: 0)
    contentView.addConstraint(attribute: .left, alignElement: view, alignElementAttribute: .left, constant: 0)
    contentView.addConstraint(attribute: .bottom, alignElement: view, alignElementAttribute: .bottom, constant: 0)
  }
  
  func addImageTop() {
    contentView.addSubview(imageTop)
    imageTop.clipsToBounds = true
    imageTop.contentMode = .scaleAspectFill
    imageTop.addConstraint(attribute: .top, alignElement: contentView, alignElementAttribute: .top, constant: 0)
    imageTop.addConstraint(attribute: .right, alignElement: contentView, alignElementAttribute: .right, constant: 0)
    imageTop.addConstraint(attribute: .left, alignElement: contentView, alignElementAttribute: .left, constant: 0)
    imageTop.addConstraint(attribute: .height, alignElement: nil, alignElementAttribute: .notAnAttribute, constant: 250)
  }
  
  func addSrcrollView() {
    contentView.addSubview(scrollView)
    scrollView.backgroundColor = .background
    scrollView.addConstraint(attribute: .top, alignElement: imageTop, alignElementAttribute: .bottom, constant: 0)
    scrollView.addConstraint(attribute: .right, alignElement: contentView, alignElementAttribute: .right, constant: 0)
    scrollView.addConstraint(attribute: .left, alignElement: contentView, alignElementAttribute: .left, constant: 0)
    scrollView.addConstraint(attribute: .bottom, alignElement: contentView, alignElementAttribute: .bottom, constant: 0)
  }
  
  func addTitleLabel() {
    scrollView.addSubview(titleLabel)
    titleLabel.font = .fontBold20
    titleLabel.textColor = .title
    titleLabel.numberOfLines = 0
    titleLabel.addConstraint(attribute: .top, alignElement: scrollView, alignElementAttribute: .top, constant: 30)
    titleLabel.addConstraint(attribute: .right, alignElement: scrollView, alignElementAttribute: .right, constant: 30)
    titleLabel.addConstraint(attribute: .left, alignElement: scrollView, alignElementAttribute: .left, constant: 30)
    titleLabel.addConstraint(attribute: .centerX, alignElement: scrollView, alignElementAttribute: .centerX, constant: 0)
  }
  
  func addTextLabel() {
    scrollView.addSubview(textLabel)
    textLabel.font = .fontRegular14
    textLabel.textColor = .text
    textLabel.numberOfLines = 0
    textLabel.addConstraint(attribute: .top, alignElement: titleLabel, alignElementAttribute: .bottom, constant: 15)
    textLabel.addConstraint(attribute: .right, alignElement: scrollView, alignElementAttribute: .right, constant: 30)
    textLabel.addConstraint(attribute: .left, alignElement: scrollView, alignElementAttribute: .left, constant: 30)
    textLabel.addConstraint(attribute: .centerX, alignElement: scrollView, alignElementAttribute: .centerX, constant: 0)
  }
  
  func addAuthorContainer() {
    scrollView.addSubview(authorContainer)
    authorContainer.addConstraint(attribute: .top, alignElement: textLabel, alignElementAttribute: .bottom, constant: 30)
    authorContainer.addConstraint(attribute: .right, alignElement: scrollView, alignElementAttribute: .right, constant: 30)
    authorContainer.addConstraint(attribute: .left, alignElement: scrollView, alignElementAttribute: .left, constant: 30)
    authorContainer.addConstraint(attribute: .bottom, alignElement: scrollView, alignElementAttribute: .bottom, constant: 30)
    authorContainer.addConstraint(attribute: .centerX, alignElement: scrollView, alignElementAttribute: .centerX, constant: 0)
  }
  
  func addAuthorImage() {
    authorContainer.addSubview(authorImage)
    authorImage.layer.cornerRadius = 30
    authorImage.clipsToBounds = true
    authorImage.contentMode = .scaleAspectFill
    authorImage.addConstraint(attribute: .top, alignElement: authorContainer, alignElementAttribute: .top, constant: 0)
    authorImage.addConstraint(attribute: .left, alignElement: authorContainer, alignElementAttribute: .left, constant: 0)
    authorImage.addConstraint(attribute: .bottom, alignElement: authorContainer, alignElementAttribute: .bottom, constant: 0)
    authorImage.addConstraint(attribute: .width, alignElement: nil, alignElementAttribute: .notAnAttribute, constant: 60)
    authorImage.addConstraint(attribute: .height, alignElement: nil, alignElementAttribute: .notAnAttribute, constant: 60)
  }
  
  func addAuthorTextContainer() {
    authorContainer.addSubview(authorTextContainer)
    authorTextContainer.addConstraint(attribute: .left, alignElement: authorImage, alignElementAttribute: .right, constant: 15)
    authorTextContainer.addConstraint(attribute: .right, alignElement: authorContainer, alignElementAttribute: .right, constant: 0)
    authorTextContainer.addConstraint(attribute: .centerY, alignElement: authorImage, alignElementAttribute: .centerY, constant: 0)
  }
  
  func addAuthorName() {
    authorTextContainer.addSubview(authorName)
    authorName.font = .fontBold15
    authorName.textColor = .title
    authorName.numberOfLines = 0
    authorName.addConstraint(attribute: .top, alignElement: authorTextContainer, alignElementAttribute: .top, constant: 0)
    authorName.addConstraint(attribute: .left, alignElement: authorTextContainer, alignElementAttribute: .left, constant: 0)
    authorName.addConstraint(attribute: .right, alignElement: authorTextContainer, alignElementAttribute: .right, constant: 0)
  }
  
  func addAuthorEmail() {
    authorTextContainer.addSubview(authorEmail)
    authorEmail.font = .fontRegular11
    authorEmail.textColor = .text
    authorEmail.numberOfLines = 0
    authorEmail.addConstraint(attribute: .top, alignElement: authorName, alignElementAttribute: .bottom, constant: 5)
    authorEmail.addConstraint(attribute: .left, alignElement: authorTextContainer, alignElementAttribute: .left, constant: 0)
    authorEmail.addConstraint(attribute: .right, alignElement: authorTextContainer, alignElementAttribute: .right, constant: 0)
    authorEmail.addConstraint(attribute: .bottom, alignElement: authorTextContainer, alignElementAttribute: .bottom, constant: 0)
  }
  
  func setup() {
    imageTop.image = UIImage(named: post.imageName)
    titleLabel.text = post.title
    textLabel.text = post.description
    authorImage.image = UIImage(named: post.authorImageName)
    authorName.text = post.authorName
    authorEmail.text = post.authorEmail
  }
  
}

// MARK: Methods of ErrorViewProtocol
extension PostDetailView: ErrorViewProtocol {
  
  func didPressRetry() {
    errorView.isHidden = true
    contentView.isHidden = true
    presenter?.fetchAuthor()
  }
  
}

// MARK: Methods of PostDetailPresenterToViewProtocol
extension PostDetailView: PostDetailPresenterToViewProtocol {
  
  func showPost(postEntity: PostDetailPresentationEntity) {
    post = postEntity
    errorView.isHidden = true
    contentView.isHidden = false
    setup()
  }
  
  func showError() {
    contentView.isHidden = true
    errorView.isHidden = false
  }

}
