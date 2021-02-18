import 'package:flutter/material.dart';

List storyList = [
  {
    "name":"Ronald",
    "imageURL":"https://randomuser.me/api/portraits/women/2.jpg",
    "isOnline":true,
    "hasStory":true,
  },

  {
    "name":"Rahul",
    "imageURL":"https://randomuser.me/api/portraits/men/58.jpg",
    "isOnline":true,
    "hasStory":true,
  },

  {
    "name":"Shreyas",
    "imageURL":"https://randomuser.me/api/portraits/men/58.jpg",
    "isOnline":true,
    "hasStory":true,
  },

  {
    "name":"Satvik",
    "imageURL":"https://randomuser.me/api/portraits/men/58.jpg",
    "isOnline":true,
    "hasStory":true,
  },

  {
    "name":"Siddanth",
    "imageURL":"https://randomuser.me/api/portraits/men/58.jpg",
    "isOnline":true,
    "hasStory":true,
  },

  {
    "name":"Sharan",
    "imageURL":"https://randomuser.me/api/portraits/men/58.jpg",
    "isOnline":true,
    "hasStory":true,
  },
];

stories() {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      children: [
        Padding(
          padding: EdgeInsets.only(right: 20.0),
          child: Column(
            children: [
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFFe9eaec),
                ),
                child: Center(
                  child: Icon(
                    Icons.add,
                    size: 33,
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              SizedBox(
                width: 75,
                child: Align(
                  child: Text(
                    'Your Story',
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            ],
          ),
        ),
        Row(
          children: List.generate(storyList.length, (index) {
            return Padding(
              padding: EdgeInsets.only(right: 20),
              child: Column(
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    child: Stack(
                      children: [
                        storyList[index]['hasStory'] ? Container(
                    decoration: BoxDecoration(
                    shape: BoxShape.circle,
                      border: Border.all(
                          color: Colors.blueAccent,
                          width: 3.0
                      ),
                    ),
                child: Padding(
                  padding: EdgeInsets.all(3.0),
                  child: Container(
                    width: 75,
                    height: 75,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: NetworkImage(
                          storyList[index]['imageURL'],
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              )
                            :Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: NetworkImage(
                                      storyList[index]['imageUrl']
                                  ),
                                  fit: BoxFit.cover)
                          ),
                        ),
                        storyList[index]['isOnline'] ?Positioned(
                          top: 38,
                          left: 42,
                          child: Container(
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                                color: Color(0xFF66BB6A),
                                shape: BoxShape.circle,
                                border: Border.all(
                                    color: Color(0xFFFFFFFF), width: 3)),
                          ),
                        )
                            :Container()
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: 75,
                    child: Align(
                      child: Text(
                        storyList[index]['name'],
                        overflow: TextOverflow.ellipsis,
                      ),
                    )
                  ),
                ],
              ),
            );
          }),
        ),
      ],
    ),
  );
}
