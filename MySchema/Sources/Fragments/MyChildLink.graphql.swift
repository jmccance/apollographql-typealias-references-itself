// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public struct MyChildLink: MySchema.SelectionSet, Fragment {
  public static var fragmentDefinition: StaticString {
    #"fragment MyChildLink on ChildLink { __typename id }"#
  }

  public let __data: DataDict
  public init(_dataDict: DataDict) { __data = _dataDict }

  public static var __parentType: ApolloAPI.ParentType { MySchema.Objects.ChildLink }
  public static var __selections: [ApolloAPI.Selection] { [
    .field("__typename", String.self),
    .field("id", MySchema.ID.self),
  ] }

  public var id: MySchema.ID { __data["id"] }
}
