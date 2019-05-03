//
//  PostDetailInteractor.swift
//  Blog Posts
//
//  Created by Juliano Terres on 02/05/19.
//  Copyright © 2019 Juliano Terres. All rights reserved.
//

// MARK: Methods of PostDetailInteractor
class PostDetailInteractor: PostDetailInteractorProtocol {
  
  var presenter: PostDetailInteractorToPresenterProtocol?
  var worker: PostDetailInteractorToWorkerProtocol?
  var post: PostListPresentationEntity!
  
}

// MARK: Methods of PostDetailPresenterToInteractorProtocol
extension PostDetailInteractor: PostDetailPresenterToInteractorProtocol {
  
  func fetchAuthor() {
    worker?.fetchAuthor()
  }
  
}

// MARK: Methods of PostDetailWorkerToInteractorProtocol
extension PostDetailInteractor: PostDetailWorkerToInteractorProtocol {
  
  func fetchedAuthor(authors: [PostDetailAuthorApiEntity]) {
    
    let user = authors.filter({ $0.id == post.authorId }).first
    
    let postEntity = PostDetailPresentationEntity(
      authorEmail: user?.email ?? "",
      authorImageName: "avatar_" + String(user?.id ?? 1),
      authorName: user?.name ?? "",
      description: post.description,
      imageName: post.imageName,
      title: post.title
    )
    
    presenter?.fetchedAuthor(post: postEntity)
    
  }
  
  func fetchedFail() {
    presenter?.fetchedFail()
  }
  
}

