//
//  Confirmation.swift
//
//  Created by JOEYCO-0072PK on 14/07/2021
//  Copyright (c) . All rights reserved.
//

import Foundation

class Confirmation: Codable {

  enum CodingKeys: String, CodingKey {
    case confirmed
    case attachmentPath = "attachment_path"
    case ordinal
    case taskId = "task_id"
    case joeyId = "joey_id"
    case title
    case action
    case id
    case inputType = "input_type"
    case name
  }

  var confirmed: Int?
  var attachmentPath: String?
  var ordinal: Int?
  var taskId: Int?
  var joeyId: Int?
  var title: String?
  var action: Action?
  var id: Int?
  var inputType: String?
  var name: String?

  init (confirmed: Int?, attachmentPath: String?, ordinal: Int?, taskId: Int?, joeyId: Int?, title: String?, action: Action?, id: Int?, inputType: String?, name: String?) {
    self.confirmed = confirmed
    self.attachmentPath = attachmentPath
    self.ordinal = ordinal
    self.taskId = taskId
    self.joeyId = joeyId
    self.title = title
    self.action = action
    self.id = id
    self.inputType = inputType
    self.name = name
  }

  required init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    confirmed = try container.decodeIfPresent(Int.self, forKey: .confirmed)
    attachmentPath = try container.decodeIfPresent(String.self, forKey: .attachmentPath)
    ordinal = try container.decodeIfPresent(Int.self, forKey: .ordinal)
    taskId = try container.decodeIfPresent(Int.self, forKey: .taskId)
    joeyId = try container.decodeIfPresent(Int.self, forKey: .joeyId)
    title = try container.decodeIfPresent(String.self, forKey: .title)
    action = try container.decodeIfPresent(Action.self, forKey: .action)
    id = try container.decodeIfPresent(Int.self, forKey: .id)
    inputType = try container.decodeIfPresent(String.self, forKey: .inputType)
    name = try container.decodeIfPresent(String.self, forKey: .name)
  }

}
