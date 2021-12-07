// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: storage.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that you are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

struct PBStorage_File {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var type: PBStorage_File.FileType = .file

  var name: String = String()

  var size: UInt32 = 0

  var data: Data = Data()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  enum FileType: SwiftProtobuf.Enum {
    typealias RawValue = Int

    /// default value
    case file // = 0
    case dir // = 1
    case UNRECOGNIZED(Int)

    init() {
      self = .file
    }

    init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .file
      case 1: self = .dir
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    var rawValue: Int {
      switch self {
      case .file: return 0
      case .dir: return 1
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  init() {}
}

#if swift(>=4.2)

extension PBStorage_File.FileType: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  static var allCases: [PBStorage_File.FileType] = [
    .file,
    .dir,
  ]
}

#endif  // swift(>=4.2)

struct PBStorage_InfoRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var path: String = String()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct PBStorage_InfoResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var totalSpace: UInt64 = 0

  var freeSpace: UInt64 = 0

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct PBStorage_StatRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var path: String = String()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct PBStorage_StatResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var file: PBStorage_File {
    get {return _file ?? PBStorage_File()}
    set {_file = newValue}
  }
  /// Returns true if `file` has been explicitly set.
  var hasFile: Bool {return self._file != nil}
  /// Clears the value of `file`. Subsequent reads from it will return its default value.
  mutating func clearFile() {self._file = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _file: PBStorage_File? = nil
}

struct PBStorage_ListRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var path: String = String()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct PBStorage_ListResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var file: [PBStorage_File] = []

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct PBStorage_ReadRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var path: String = String()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct PBStorage_ReadResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var file: PBStorage_File {
    get {return _file ?? PBStorage_File()}
    set {_file = newValue}
  }
  /// Returns true if `file` has been explicitly set.
  var hasFile: Bool {return self._file != nil}
  /// Clears the value of `file`. Subsequent reads from it will return its default value.
  mutating func clearFile() {self._file = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _file: PBStorage_File? = nil
}

struct PBStorage_WriteRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var path: String = String()

  var file: PBStorage_File {
    get {return _file ?? PBStorage_File()}
    set {_file = newValue}
  }
  /// Returns true if `file` has been explicitly set.
  var hasFile: Bool {return self._file != nil}
  /// Clears the value of `file`. Subsequent reads from it will return its default value.
  mutating func clearFile() {self._file = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _file: PBStorage_File? = nil
}

struct PBStorage_DeleteRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var path: String = String()

  var recursive: Bool = false

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct PBStorage_MkdirRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var path: String = String()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct PBStorage_Md5sumRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var path: String = String()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct PBStorage_Md5sumResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var md5Sum: String = String()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct PBStorage_RenameRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var oldPath: String = String()

  var newPath: String = String()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "PB_Storage"

extension PBStorage_File: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".File"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "type"),
    2: .same(proto: "name"),
    3: .same(proto: "size"),
    4: .same(proto: "data"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularEnumField(value: &self.type) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.name) }()
      case 3: try { try decoder.decodeSingularUInt32Field(value: &self.size) }()
      case 4: try { try decoder.decodeSingularBytesField(value: &self.data) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.type != .file {
      try visitor.visitSingularEnumField(value: self.type, fieldNumber: 1)
    }
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 2)
    }
    if self.size != 0 {
      try visitor.visitSingularUInt32Field(value: self.size, fieldNumber: 3)
    }
    if !self.data.isEmpty {
      try visitor.visitSingularBytesField(value: self.data, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: PBStorage_File, rhs: PBStorage_File) -> Bool {
    if lhs.type != rhs.type {return false}
    if lhs.name != rhs.name {return false}
    if lhs.size != rhs.size {return false}
    if lhs.data != rhs.data {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension PBStorage_File.FileType: SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "FILE"),
    1: .same(proto: "DIR"),
  ]
}

extension PBStorage_InfoRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".InfoRequest"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "path"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.path) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.path.isEmpty {
      try visitor.visitSingularStringField(value: self.path, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: PBStorage_InfoRequest, rhs: PBStorage_InfoRequest) -> Bool {
    if lhs.path != rhs.path {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension PBStorage_InfoResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".InfoResponse"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "total_space"),
    2: .standard(proto: "free_space"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularUInt64Field(value: &self.totalSpace) }()
      case 2: try { try decoder.decodeSingularUInt64Field(value: &self.freeSpace) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.totalSpace != 0 {
      try visitor.visitSingularUInt64Field(value: self.totalSpace, fieldNumber: 1)
    }
    if self.freeSpace != 0 {
      try visitor.visitSingularUInt64Field(value: self.freeSpace, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: PBStorage_InfoResponse, rhs: PBStorage_InfoResponse) -> Bool {
    if lhs.totalSpace != rhs.totalSpace {return false}
    if lhs.freeSpace != rhs.freeSpace {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension PBStorage_StatRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".StatRequest"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "path"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.path) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.path.isEmpty {
      try visitor.visitSingularStringField(value: self.path, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: PBStorage_StatRequest, rhs: PBStorage_StatRequest) -> Bool {
    if lhs.path != rhs.path {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension PBStorage_StatResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".StatResponse"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "file"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._file) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._file {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: PBStorage_StatResponse, rhs: PBStorage_StatResponse) -> Bool {
    if lhs._file != rhs._file {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension PBStorage_ListRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".ListRequest"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "path"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.path) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.path.isEmpty {
      try visitor.visitSingularStringField(value: self.path, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: PBStorage_ListRequest, rhs: PBStorage_ListRequest) -> Bool {
    if lhs.path != rhs.path {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension PBStorage_ListResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".ListResponse"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "file"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedMessageField(value: &self.file) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.file.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.file, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: PBStorage_ListResponse, rhs: PBStorage_ListResponse) -> Bool {
    if lhs.file != rhs.file {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension PBStorage_ReadRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".ReadRequest"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "path"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.path) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.path.isEmpty {
      try visitor.visitSingularStringField(value: self.path, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: PBStorage_ReadRequest, rhs: PBStorage_ReadRequest) -> Bool {
    if lhs.path != rhs.path {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension PBStorage_ReadResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".ReadResponse"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "file"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._file) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._file {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: PBStorage_ReadResponse, rhs: PBStorage_ReadResponse) -> Bool {
    if lhs._file != rhs._file {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension PBStorage_WriteRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".WriteRequest"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "path"),
    2: .same(proto: "file"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.path) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._file) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    if !self.path.isEmpty {
      try visitor.visitSingularStringField(value: self.path, fieldNumber: 1)
    }
    try { if let v = self._file {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: PBStorage_WriteRequest, rhs: PBStorage_WriteRequest) -> Bool {
    if lhs.path != rhs.path {return false}
    if lhs._file != rhs._file {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension PBStorage_DeleteRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".DeleteRequest"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "path"),
    2: .same(proto: "recursive"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.path) }()
      case 2: try { try decoder.decodeSingularBoolField(value: &self.recursive) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.path.isEmpty {
      try visitor.visitSingularStringField(value: self.path, fieldNumber: 1)
    }
    if self.recursive != false {
      try visitor.visitSingularBoolField(value: self.recursive, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: PBStorage_DeleteRequest, rhs: PBStorage_DeleteRequest) -> Bool {
    if lhs.path != rhs.path {return false}
    if lhs.recursive != rhs.recursive {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension PBStorage_MkdirRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".MkdirRequest"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "path"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.path) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.path.isEmpty {
      try visitor.visitSingularStringField(value: self.path, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: PBStorage_MkdirRequest, rhs: PBStorage_MkdirRequest) -> Bool {
    if lhs.path != rhs.path {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension PBStorage_Md5sumRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".Md5sumRequest"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "path"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.path) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.path.isEmpty {
      try visitor.visitSingularStringField(value: self.path, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: PBStorage_Md5sumRequest, rhs: PBStorage_Md5sumRequest) -> Bool {
    if lhs.path != rhs.path {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension PBStorage_Md5sumResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".Md5sumResponse"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "md5sum"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.md5Sum) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.md5Sum.isEmpty {
      try visitor.visitSingularStringField(value: self.md5Sum, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: PBStorage_Md5sumResponse, rhs: PBStorage_Md5sumResponse) -> Bool {
    if lhs.md5Sum != rhs.md5Sum {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension PBStorage_RenameRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".RenameRequest"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "old_path"),
    2: .standard(proto: "new_path"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.oldPath) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.newPath) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.oldPath.isEmpty {
      try visitor.visitSingularStringField(value: self.oldPath, fieldNumber: 1)
    }
    if !self.newPath.isEmpty {
      try visitor.visitSingularStringField(value: self.newPath, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: PBStorage_RenameRequest, rhs: PBStorage_RenameRequest) -> Bool {
    if lhs.oldPath != rhs.oldPath {return false}
    if lhs.newPath != rhs.newPath {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
