// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class GetLinksQuery: GraphQLQuery {
  public static let operationName: String = "GetLinks"
  public static let operationDocument: ApolloAPI.OperationDocument = .init(
    definition: .init(
      #"query GetLinks { links { __typename to { __typename id links { __typename id } } } links { __typename ...MyLink ...MyChildLink } }"#,
      fragments: [MyChildLink.self, MyLink.self]
    ))

  public init() {}

  public struct Data: MySchema.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { MySchema.Objects.Query }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("links", [Link].self),
    ] }

    public var links: [Link] { __data["links"] }

    /// Link
    ///
    /// Parent Type: `Link`
    public struct Link: MySchema.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: ApolloAPI.ParentType { MySchema.Interfaces.Link }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("to", To.self),
        .inlineFragment(AsChildLink.self),
        .fragment(MyLink.self),
      ] }

      public var to: To { __data["to"] }

      public var asChildLink: AsChildLink? { _asInlineFragment() }

      public struct Fragments: FragmentContainer {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public var myLink: MyLink { _toFragment() }
      }

      /// Link.To
      ///
      /// Parent Type: `Linkable`
      public struct To: MySchema.SelectionSet {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public static var __parentType: ApolloAPI.ParentType { MySchema.Interfaces.Linkable }
        public static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .field("id", MySchema.ID.self),
          .field("links", [Link].self),
        ] }

        public var id: MySchema.ID { __data["id"] }
        public var links: [Link] { __data["links"] }

        /// Link.To.Link
        ///
        /// Parent Type: `Link`
        public struct Link: MySchema.SelectionSet {
          public let __data: DataDict
          public init(_dataDict: DataDict) { __data = _dataDict }

          public static var __parentType: ApolloAPI.ParentType { MySchema.Interfaces.Link }
          public static var __selections: [ApolloAPI.Selection] { [
            .field("__typename", String.self),
            .field("id", MySchema.ID.self),
          ] }

          public var id: MySchema.ID { __data["id"] }
        }
      }

      /// Link.AsChildLink
      ///
      /// Parent Type: `ChildLink`
      public struct AsChildLink: MySchema.InlineFragment {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public typealias RootEntityType = GetLinksQuery.Data.Link
        public static var __parentType: ApolloAPI.ParentType { MySchema.Objects.ChildLink }
        public static var __selections: [ApolloAPI.Selection] { [
          .fragment(MyChildLink.self),
        ] }

        public var to: To { __data["to"] }
        public var id: MySchema.ID { __data["id"] }

        public struct Fragments: FragmentContainer {
          public let __data: DataDict
          public init(_dataDict: DataDict) { __data = _dataDict }

          public var myChildLink: MyChildLink { _toFragment() }
          public var myLink: MyLink { _toFragment() }
        }

        /// Link.AsChildLink.To
        ///
        /// Parent Type: `Linkable`
        public struct To: MySchema.SelectionSet {
          public let __data: DataDict
          public init(_dataDict: DataDict) { __data = _dataDict }

          public static var __parentType: ApolloAPI.ParentType { MySchema.Interfaces.Linkable }

          public var id: MySchema.ID { __data["id"] }
          public var links: [Link] { __data["links"] }

          public typealias Link = Link.To.Link
        }
      }
    }
  }
}
