//
//  Results.swift
//
//  Created by JOEYCO-0072PK on 13/07/2021
//  Copyright (c) . All rights reserved.
//

import Foundation

struct Results: Codable {

  enum CodingKeys: String, CodingKey {
    case vehicles
    case characters
    case title
    case episodeId = "episode_id"
    case edited
    case starships
    case producer
    case created
    case species
    case planets
    case openingCrawl = "opening_crawl"
    case releaseDate = "release_date"
    case director
    case url
  }

  var vehicles: [String]?
  var characters: [String]?
  var title: String?
  var episodeId: Int?
  var edited: String?
  var starships: [String]?
  var producer: String?
  var created: String?
  var species: [String]?
  var planets: [String]?
  var openingCrawl: String?
  var releaseDate: String?
  var director: String?
  var url: String?



  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    vehicles = try container.decodeIfPresent([String].self, forKey: .vehicles)
    characters = try container.decodeIfPresent([String].self, forKey: .characters)
    title = try container.decodeIfPresent(String.self, forKey: .title)
    episodeId = try container.decodeIfPresent(Int.self, forKey: .episodeId)
    edited = try container.decodeIfPresent(String.self, forKey: .edited)
    starships = try container.decodeIfPresent([String].self, forKey: .starships)
    producer = try container.decodeIfPresent(String.self, forKey: .producer)
    created = try container.decodeIfPresent(String.self, forKey: .created)
    species = try container.decodeIfPresent([String].self, forKey: .species)
    planets = try container.decodeIfPresent([String].self, forKey: .planets)
    openingCrawl = try container.decodeIfPresent(String.self, forKey: .openingCrawl)
    releaseDate = try container.decodeIfPresent(String.self, forKey: .releaseDate)
    director = try container.decodeIfPresent(String.self, forKey: .director)
    url = try container.decodeIfPresent(String.self, forKey: .url)
  }

}
