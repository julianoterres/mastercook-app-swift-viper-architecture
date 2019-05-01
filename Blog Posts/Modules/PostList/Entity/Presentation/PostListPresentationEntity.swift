//
//  PostListPresentationEntity.swift
//  Blog Posts
//
//  Created by Juliano Terres on 01/05/19.
//  Copyright © 2019 Juliano Terres. All rights reserved.
//

struct PostListPresentationEntity: Codable {
  let authorId: Int
  let category: String
  let date: String
  let description: String
  let imageName: String
  let likes: String
  let shortDescription: String
  let title: String
}
