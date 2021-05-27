// {
//     "id" : 1,
//     "title": "How to Connect to MySQL",
//     "description": "To start working with MySQL, you’ll need to establish an active SSH session on your server.",
//     "queries": [
//         {
//             "query" : "mysql -u root -p"
//         }
//         ]
    
// }


// To parse this JSON data, do
//
//     final aiSql = aiSqlFromMap(jsonString);

import 'dart:convert';

AiSql aiSqlFromMap(String str) => AiSql.fromMap(json.decode(str));

String aiSqlToMap(AiSql data) => json.encode(data.toMap());

class AiSql {
    AiSql({
        this.id,
        this.title,
        this.description,
        this.queries,
    });

    final int? id;
    final String? title;
    final String? description;
    final List<Query>? queries;

    factory AiSql.fromMap(Map<String, dynamic> json) => AiSql(
        id: json["id"],
        title: json["title"],
        description: json["description"],
        queries: List<Query>.from(json["queries"].map((x) => Query.fromMap(x))),
    );

    Map<String, dynamic> toMap() => {
        "id": id,
        "title": title,
        "description": description,
        "queries": List<dynamic>.from(queries!.map((x) => x.toMap())),
    };
}

class Query {
    Query({
        this.query,
    });

    final String? query;

    factory Query.fromMap(Map<String, dynamic> json) => Query(
        query: json["query"],
    );

    Map<String, dynamic> toMap() => {
        "query": query,
    };
}
