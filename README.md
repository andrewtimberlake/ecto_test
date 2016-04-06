# EctoTest

Error received when trying to load a many_to_many association with binary_id foreign keys

    ** (ArgumentError) Postgrex expected a binary of 16 bytes that can be encoded/cast to type "uuid", got "710e27db-91dd-4c8f-8e8d-a520eec7a095". Please make sure the value you are passing matches the definition in your table or in your query or convert the value accordingly.
        (postgrex) lib/postgrex/extensions/uuid.ex:9: Postgrex.Extensions.UUID.encode/4
        (postgrex) lib/postgrex/query.ex:100: DBConnection.Query.Postgrex.Query.do_encode/4
        (postgrex) lib/postgrex/query.ex:61: DBConnection.Query.Postgrex.Query.encode/3
        (db_connection) lib/db_connection.ex:885: DBConnection.describe_execute/5
        (db_connection) lib/db_connection.ex:966: anonymous fn/4 in DBConnection.run_meter/5
        (db_connection) lib/db_connection.ex:421: DBConnection.query/4
        (ecto) lib/ecto/adapters/sql.ex:379: Ecto.Adapters.SQL.sql_call!/6
        (ecto) lib/ecto/adapters/sql.ex:363: Ecto.Adapters.SQL.execute/6

To test, run `mix ecto.setup`
