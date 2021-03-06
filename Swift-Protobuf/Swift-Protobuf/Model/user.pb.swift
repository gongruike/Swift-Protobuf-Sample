/*
 * DO NOT EDIT.
 *
 * Generated by the protocol buffer compiler.
 * Source: user.proto
 *
 */

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that your are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _1: SwiftProtobuf.ProtobufAPIVersion_1 {}
  typealias Version = _1
}

struct User: SwiftProtobuf.Message {
  static let protoMessageName: String = "User"

  var id: Int32 = 0

  var name: String = String()

  var mobile: String = String()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularInt32Field(value: &self.id)
      case 2: try decoder.decodeSingularStringField(value: &self.name)
      case 4: try decoder.decodeSingularStringField(value: &self.mobile)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.id != 0 {
      try visitor.visitSingularInt32Field(value: self.id, fieldNumber: 1)
    }
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 2)
    }
    if !self.mobile.isEmpty {
      try visitor.visitSingularStringField(value: self.mobile, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }
}

struct UserList: SwiftProtobuf.Message {
  static let protoMessageName: String = "UserList"

  var users: [User] = []

  var hasMore_p: Bool = false

  var info: String = String()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeRepeatedMessageField(value: &self.users)
      case 2: try decoder.decodeSingularBoolField(value: &self.hasMore_p)
      case 3: try decoder.decodeSingularStringField(value: &self.info)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.users.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.users, fieldNumber: 1)
    }
    if self.hasMore_p != false {
      try visitor.visitSingularBoolField(value: self.hasMore_p, fieldNumber: 2)
    }
    if !self.info.isEmpty {
      try visitor.visitSingularStringField(value: self.info, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }
}

struct UserRequest: SwiftProtobuf.Message {
  static let protoMessageName: String = "UserRequest"

  var id: String = String()

  /// basic, whole
  var type: String = String()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.id)
      case 2: try decoder.decodeSingularStringField(value: &self.type)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.id.isEmpty {
      try visitor.visitSingularStringField(value: self.id, fieldNumber: 1)
    }
    if !self.type.isEmpty {
      try visitor.visitSingularStringField(value: self.type, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }
}

struct UserListRequest: SwiftProtobuf.Message {
  static let protoMessageName: String = "UserListRequest"

  var type: String = String()

  var pageNumber: Int32 = 0

  var pageCount: Int32 = 0

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.type)
      case 2: try decoder.decodeSingularInt32Field(value: &self.pageNumber)
      case 3: try decoder.decodeSingularInt32Field(value: &self.pageCount)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.type.isEmpty {
      try visitor.visitSingularStringField(value: self.type, fieldNumber: 1)
    }
    if self.pageNumber != 0 {
      try visitor.visitSingularInt32Field(value: self.pageNumber, fieldNumber: 2)
    }
    if self.pageCount != 0 {
      try visitor.visitSingularInt32Field(value: self.pageCount, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }
}

struct ErrorResponse: SwiftProtobuf.Message {
  static let protoMessageName: String = "ErrorResponse"

  var code: Int32 = 0

  var message: String = String()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularInt32Field(value: &self.code)
      case 2: try decoder.decodeSingularStringField(value: &self.message)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.code != 0 {
      try visitor.visitSingularInt32Field(value: self.code, fieldNumber: 1)
    }
    if !self.message.isEmpty {
      try visitor.visitSingularStringField(value: self.message, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }
}

struct SimpleInfo: SwiftProtobuf.Message {
  static let protoMessageName: String = "SimpleInfo"

  var title: String = String()

  var info: String = String()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.title)
      case 2: try decoder.decodeSingularStringField(value: &self.info)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.title.isEmpty {
      try visitor.visitSingularStringField(value: self.title, fieldNumber: 1)
    }
    if !self.info.isEmpty {
      try visitor.visitSingularStringField(value: self.info, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

extension User: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "id"),
    2: .same(proto: "name"),
    4: .same(proto: "mobile"),
  ]

  func _protobuf_generated_isEqualTo(other: User) -> Bool {
    if self.id != other.id {return false}
    if self.name != other.name {return false}
    if self.mobile != other.mobile {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension UserList: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "users"),
    2: .standard(proto: "has_more"),
    3: .same(proto: "info"),
  ]

  func _protobuf_generated_isEqualTo(other: UserList) -> Bool {
    if self.users != other.users {return false}
    if self.hasMore_p != other.hasMore_p {return false}
    if self.info != other.info {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension UserRequest: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "id"),
    2: .same(proto: "type"),
  ]

  func _protobuf_generated_isEqualTo(other: UserRequest) -> Bool {
    if self.id != other.id {return false}
    if self.type != other.type {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension UserListRequest: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "type"),
    2: .standard(proto: "page_number"),
    3: .standard(proto: "page_count"),
  ]

  func _protobuf_generated_isEqualTo(other: UserListRequest) -> Bool {
    if self.type != other.type {return false}
    if self.pageNumber != other.pageNumber {return false}
    if self.pageCount != other.pageCount {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension ErrorResponse: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "code"),
    2: .same(proto: "message"),
  ]

  func _protobuf_generated_isEqualTo(other: ErrorResponse) -> Bool {
    if self.code != other.code {return false}
    if self.message != other.message {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension SimpleInfo: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "title"),
    2: .same(proto: "info"),
  ]

  func _protobuf_generated_isEqualTo(other: SimpleInfo) -> Bool {
    if self.title != other.title {return false}
    if self.info != other.info {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}
