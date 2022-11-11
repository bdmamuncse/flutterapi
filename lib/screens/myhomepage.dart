import 'package:apicall/controllers/post_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyHomePage extends StatelessWidget {
  final postcon = Get.put(PostController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('API Calling'),
      ),
      body: Obx(()=>postcon.isLoading.value?
      const Center(child: CircularProgressIndicator(),):ListView.builder(
        itemCount: postcon.postlist.length,
        itemBuilder: (_,index){
          // return ListTile(
          //   title: Text(postcon.postlist[index].title.toString()),
          // );
          return Card(
            elevation: 10,
            child: Container(
              height: 150,
              child: Column(
                children: [
                  Text(postcon.postlist[index].id.toString()),
                  Text(postcon.postlist[index].userid.toString()),
                  Text(postcon.postlist[index].title.toString()),
                  Text(postcon.postlist[index].content.toString()),
                ],
              ),
            ),
          );
        },
      )
      ),

    );
  }
}
