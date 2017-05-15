/*
 * DO NOT EDIT.
 *
 * Generated by the protocol buffer compiler.
 * Source: student.proto
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

struct Student: SwiftProtobuf.Message {
  static let protoMessageName: String = "Student"

  var name: String = String()

  var id: Int32 = 0

  var email: String = String()

  var mobile: String = String()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.name)
      case 2: try decoder.decodeSingularInt32Field(value: &self.id)
      case 3: try decoder.decodeSingularStringField(value: &self.email)
      case 4: try decoder.decodeSingularStringField(value: &self.mobile)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 1)
    }
    if self.id != 0 {
      try visitor.visitSingularInt32Field(value: self.id, fieldNumber: 2)
    }
    if !self.email.isEmpty {
      try visitor.visitSingularStringField(value: self.email, fieldNumber: 3)
    }
    if !self.mobile.isEmpty {
      try visitor.visitSingularStringField(value: self.mobile, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

extension Student: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "name"),
    2: .same(proto: "id"),
    3: .same(proto: "email"),
    4: .same(proto: "mobile"),
  ]

  func _protobuf_generated_isEqualTo(other: Student) -> Bool {
    if self.name != other.name {return false}
    if self.id != other.id {return false}
    if self.email != other.email {return false}
    if self.mobile != other.mobile {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}
