//
//  PostListInteractor.swift
//  Blog Posts
//
//  Created by Juliano Terres on 01/05/19.
//  Copyright © 2019 Juliano Terres. All rights reserved.
//

// MARK: Methods of PostListInteractor
class PostListInteractor: PostListInteractorProtocol {
  
  weak var presenter: PostListInteractorToPresenterProtocol?
  var worker: PostListInteractorToWorkerProtocol?
  
}

// MARK: Methods of PostListPresenterToInteractorProtocol
extension PostListInteractor: PostListPresenterToInteractorProtocol {
  
  func fetchPosts() {
    worker?.fetchPosts()
  }
  
}

// MARK: Methods of PostListWorkerToInteractorProtocol
extension PostListInteractor: PostListWorkerToInteractorProtocol {
  
  func fetchedPosts(posts: [PostListApiEntity]) {
    
    let postList = posts.map { (post) -> PostListPresentationEntity in
      return PostListPresentationEntity(
        authorId: post.userId,
        category: "Category Name",
        date: "May 5",
        description: post.body,
        imageName: "image_random_" + String(Int.random(in: 1 ..< 11)),
        likes: String(Int.random(in: 0 ..< 1000)),
        shortDescription: post.body.prefix(100) + "...",
        title: post.title
      )
    }
    
    presenter?.fetchedPosts(posts: postList)
    
  }
  
  func fetchedFail() {
    presenter?.fetchedFail()
  }

}
