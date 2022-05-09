import 'package:flutter/material.dart';
import 'package:rest_api/models/post.dart';
import 'package:http/http.dart' as http;


class RemoteService {
   Future<List<Post>?> getPosts() async{
      try {
         var client = http.Client();
         var uri = Uri.parse('https://jsonplaceholder.typicode.com/posts');
         var response = await client.get(uri);
         if(response.statusCode==200){
            var json = response.body;
            return postFromJson(json);
            // will give you list of  post
         }
         else{
            return null;
         }
      }
      catch (e){
         return null;
      }

   }
}