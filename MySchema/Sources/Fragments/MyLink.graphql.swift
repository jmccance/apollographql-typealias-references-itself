// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public struct MyLink: MySchema.SelectionSet, Fragment {
  public static var fragmentDefinition: StaticString {
    #"fragment MyLink on Link { __typename to { __typename id } }"#
  }

  public let __data: DataDict
  public init(_dataDict: DataDict) { __data = _dataDict }

  public static var __parentType: ApolloAPI.ParentType { MySchema.Interfaces.Link }
  public static var __selections: [ApolloAPI.Selection] { [
    .field("__typename", String.self),
    .field("to", To.self),
  ] }

  public var to: To { __data["to"] }

  /// To
  ///
  /// Parent Type: `Linkable`
  public struct To: MySchema.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { MySchema.Interfaces.Linkable }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("__typename", String.self),
      .field("id", MySchema.ID.self),
    ] }

    public var id: MySchema.ID { __data["id"] }
  }
}
