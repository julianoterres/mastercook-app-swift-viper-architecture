//
//  PostDetailAuthorApiEntity.swift
//  Blog Posts
//
//  Created by Juliano Terres on 03/05/19.
//  Copyright © 2019 Juliano Terres. All rights reserved.
//

struct PostDetailAuthorApiEntity: Codable {
  let address: PostDetailAuthorAddressApiEntity
  let company: PostDetailAuthorCompanyApiEntity
  let email: String
  let id: Int
  let name: String
  let phone: String
  let username: String
  let website: String 
}
