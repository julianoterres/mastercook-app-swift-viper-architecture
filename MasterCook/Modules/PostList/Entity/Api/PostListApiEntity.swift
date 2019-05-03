//
//  PostListApi.swift
//  Blog Posts
//
//  Created by Juliano Terres on 01/05/19.
//  Copyright © 2019 Juliano Terres. All rights reserved.
//

struct PostListApiEntity: Codable {
  let userId: Int
  let id: Int
  let title: String
  let body: String
}
