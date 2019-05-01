//
//  PostListWorker.swift
//  Blog Posts
//
//  Created by Juliano Terres on 30/04/19.
//  Copyright © 2019 Juliano Terres. All rights reserved.
//

import Foundation

// MARK: Methods of PostListWorker
class PostListWorker: PostListWorkerProtocol {
  
  weak var interactor: PostListWorkerToInteractorProtocol?
  var network: NetworkProtocol?
  var urlsApi: UrlsApi?
  
}

// MARK: Methods of PostListInteractorToWorkerProtocol
extension PostListWorker: PostListInteractorToWorkerProtocol {
  
  func fetchPosts() {
    
    guard let url = urlsApi?.posts else {
      interactor?.fetchedFail()
      return
    }
    
    network?.request(url: url, method: .get, parameters: nil, success: { [weak self] (response) in
      do {
        let posts = try JSONDecoder().decode([PostListApiEntity].self, from: response)
        self?.interactor?.fetchedPosts(posts: posts)
      } catch {
        self?.interactor?.fetchedFail()
      }
    }, failure: { [weak self] (error) in
      self?.interactor?.fetchedFail()
    })
    
  }
  
}
