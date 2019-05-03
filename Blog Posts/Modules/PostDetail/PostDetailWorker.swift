//
//  PostDetailWorker.swift
//  Blog Posts
//
//  Created by Juliano Terres on 02/05/19.
//  Copyright © 2019 Juliano Terres. All rights reserved.
//

import Foundation

// MARK: Methods of PostDetailWorker
class PostDetailWorker: PostDetailWorkerProtocol {
  
  var interactor: PostDetailWorkerToInteractorProtocol?
  var network: NetworkProtocol?
  var urlsApi: UrlsApi?
  
}

// MARK: Methods of PostDetailInteractorToWorkerProtocol
extension PostDetailWorker: PostDetailInteractorToWorkerProtocol {
  
  func fetchAuthor() {
    
    guard let url = urlsApi?.users else {
      interactor?.fetchedFail()
      return
    }
    
    network?.request(url: url, method: .get, parameters: nil, success: { [weak self] (response) in
      do {
        let authors = try JSONDecoder().decode([PostDetailAuthorApiEntity].self, from: response)
        self?.interactor?.fetchedAuthor(authors: authors)
      } catch {
        self?.interactor?.fetchedFail()
      }
      }, failure: { [weak self] (error) in
        self?.interactor?.fetchedFail()
    })
    
  }
  
}
