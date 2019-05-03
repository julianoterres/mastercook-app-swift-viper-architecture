//
//  PostListCell.swift
//  Blog Posts
//
//  Created by Juliano Terres on 30/04/19.
//  Copyright © 2019 Juliano Terres. All rights reserved.
//

import UIKit

// MARK: Methods of PostListCell
class PostListCell: UITableViewCell {
  
  let containerView = UIView()
  let imageTop = UIImageView()
  let titleLabel = UILabel()
  let shortDescriptionLabel = UILabel()
  let categoryContainer = UIView()
  let categoryLabel = UILabel()
  let labelDate = UILabel()
  let containerLikes = UIView()
  let imageLikes = UIImageView()
  let labelLikes = UILabel()
  
  static let height = CGFloat(50)
  static let identifier = "PostListCell"
  
  override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
    selectionStyle = .none
    contentView.backgroundColor = .background
    addElementsInScreen()
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  func setup(post: PostListPresentationEntity) {
    titleLabel.text = post.title
    shortDescriptionLabel.text = post.shortDescription
    categoryLabel.text = post.category
    labelDate.text = post.date
    labelLikes.text = post.likes
    imageTop.image = UIImage(named: post.imageName)
  }
  
  func addElementsInScreen() {
    addContainerView()
    addImageTop()
    addTitleLabel()
    addShortDescriptionLabel()
    addCategoryContainer()
    addCategoryLabel()
    addLabelDate()
    addContainerLikes()
    addImageLikes()
    addLabelLikes()
  }
  
  func addContainerView() {
    contentView.addSubview(containerView)
    containerView.backgroundColor = .white
    containerView.layer.cornerRadius = 12
    containerView.layer.shadowColor = UIColor.shadowBox.cgColor
    containerView.layer.shadowOpacity = 1
    containerView.layer.shadowOffset = .zero
    containerView.layer.shadowRadius = 10
    containerView.addConstraint(attribute: .top, alignElement: contentView, alignElementAttribute: .top, constant: 15)
    containerView.addConstraint(attribute: .right, alignElement: contentView, alignElementAttribute: .right, constant: 15)
    containerView.addConstraint(attribute: .left, alignElement: contentView, alignElementAttribute: .left, constant: 15)
    containerView.addConstraint(attribute: .bottom, alignElement: contentView, alignElementAttribute: .bottom, constant: 15)
  }
  
  func addImageTop() {
    containerView.addSubview(imageTop)
    imageTop.layer.cornerRadius = 12
    imageTop.clipsToBounds = true
    imageTop.contentMode = .scaleAspectFill
    imageTop.addConstraint(attribute: .top, alignElement: containerView, alignElementAttribute: .top, constant: 15)
    imageTop.addConstraint(attribute: .right, alignElement: containerView, alignElementAttribute: .right, constant: 15)
    imageTop.addConstraint(attribute: .left, alignElement: containerView, alignElementAttribute: .left, constant: 15)
    imageTop.addConstraint(attribute: .height, alignElement: nil, alignElementAttribute: .notAnAttribute, constant: 235)
  }
  
  func addTitleLabel() {
    containerView.addSubview(titleLabel)
    titleLabel.font = .fontBold20
    titleLabel.textColor = .title
    titleLabel.numberOfLines = 0
    titleLabel.addConstraint(attribute: .top, alignElement: imageTop, alignElementAttribute: .bottom, constant: 15)
    titleLabel.addConstraint(attribute: .right, alignElement: containerView, alignElementAttribute: .right, constant: 15)
    titleLabel.addConstraint(attribute: .left, alignElement: containerView, alignElementAttribute: .left, constant: 15)
  }
  
  func addShortDescriptionLabel() {
    containerView.addSubview(shortDescriptionLabel)
    shortDescriptionLabel.font = .fontRegular14
    shortDescriptionLabel.textColor = .text
    shortDescriptionLabel.numberOfLines = 0
    shortDescriptionLabel.addConstraint(attribute: .top, alignElement: titleLabel, alignElementAttribute: .bottom, constant: 15)
    shortDescriptionLabel.addConstraint(attribute: .right, alignElement: containerView, alignElementAttribute: .right, constant: 15)
    shortDescriptionLabel.addConstraint(attribute: .left, alignElement: containerView, alignElementAttribute: .left, constant: 15)
  }
  
  func addCategoryContainer() {
    containerView.addSubview(categoryContainer)
    categoryContainer.backgroundColor = .category
    categoryContainer.layer.cornerRadius = 4
    categoryContainer.addConstraint(attribute: .top, alignElement: shortDescriptionLabel, alignElementAttribute: .bottom, constant: 15)
    categoryContainer.addConstraint(attribute: .left, alignElement: containerView, alignElementAttribute: .left, constant: 15)
    categoryContainer.addConstraint(attribute: .bottom, alignElement: containerView, alignElementAttribute: .bottom, constant: 15)
  }
  
  func addCategoryLabel() {
    categoryContainer.addSubview(categoryLabel)
    categoryLabel.textColor = .white
    categoryLabel.font = .fontRegular11
    categoryLabel.addConstraint(attribute: .top, alignElement: categoryContainer, alignElementAttribute: .top, constant: 5)
    categoryLabel.addConstraint(attribute: .left, alignElement: categoryContainer, alignElementAttribute: .left, constant: 5)
    categoryLabel.addConstraint(attribute: .right, alignElement: categoryContainer, alignElementAttribute: .right, constant: 5)
    categoryLabel.addConstraint(attribute: .bottom, alignElement: categoryContainer, alignElementAttribute: .bottom, constant: 5)
  }
  
  func addLabelDate() {
    containerView.addSubview(labelDate)
    labelDate.font = .fontBold12
    labelDate.textColor = .date
    labelDate.addConstraint(attribute: .left, alignElement: categoryLabel, alignElementAttribute: .right, constant: 15)
    labelDate.addConstraint(attribute: .centerY, alignElement: categoryLabel, alignElementAttribute: .centerY, constant: 0)
  }
  
  func addContainerLikes() {
    containerView.addSubview(containerLikes)
    containerLikes.addConstraint(attribute: .right, alignElement: containerView, alignElementAttribute: .right, constant: 15)
    containerLikes.addConstraint(attribute: .centerY, alignElement: categoryLabel, alignElementAttribute: .centerY, constant: 0)
  }
  
  func addImageLikes() {
    containerLikes.addSubview(imageLikes)
    imageLikes.image = UIImage(named: "icon_like")?.withRenderingMode(.alwaysTemplate)
    imageLikes.tintColor = .heart
    imageLikes.addConstraint(attribute: .top, alignElement: containerLikes, alignElementAttribute: .top, constant: 0)
    imageLikes.addConstraint(attribute: .left, alignElement: containerLikes, alignElementAttribute: .left, constant: 0)
    imageLikes.addConstraint(attribute: .bottom, alignElement: containerLikes, alignElementAttribute: .bottom, constant: 0)
    imageLikes.addConstraint(attribute: .width, alignElement: nil, alignElementAttribute: .notAnAttribute, constant: 15)
    imageLikes.addConstraint(attribute: .height, alignElement: nil, alignElementAttribute: .notAnAttribute, constant: 15)
  }
  
  func addLabelLikes() {
    containerLikes.addSubview(labelLikes)
    labelLikes.font = .fontBold12
    labelLikes.textColor = .likes
    labelLikes.addConstraint(attribute: .top, alignElement: containerLikes, alignElementAttribute: .top, constant: 0)
    labelLikes.addConstraint(attribute: .left, alignElement: imageLikes, alignElementAttribute: .right, constant: 5)
    labelLikes.addConstraint(attribute: .right, alignElement: containerLikes, alignElementAttribute: .right, constant: 0)
    labelLikes.addConstraint(attribute: .bottom, alignElement: containerLikes, alignElementAttribute: .bottom, constant: 0)
  }
  
}





