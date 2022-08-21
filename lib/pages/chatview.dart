import 'package:flutter/material.dart';
import 'package:telegram_clone_ui/modal/chat.dart';

class Chatview extends StatelessWidget {
  const Chatview({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Chat> chats = [
      Chat(
          name: 'Test',
          subtitle:
              'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...',
          img: Image.asset('image/rohit.jpg'),
          time: '11:40 pm'),
      Chat(
          name: 'Test',
          subtitle:
              'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...',
          img: Image.asset('image/rohit.jpg'),
          time: '11:40 pm'),
      Chat(
          name: 'Test',
          subtitle:
              'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...',
          img: Image.asset('image/rohit.jpg'),
          time: '11:40 pm'),
      Chat(
          name: 'Test',
          subtitle:
              'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...',
          img: Image.asset('image/rohit.jpg'),
          time: '11:40 pm'),
      Chat(
          name: 'Test',
          subtitle:
              'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...',
          img: Image.asset('image/rohit.jpg'),
          time: '11:40 pm'),
      Chat(
          name: 'Test',
          subtitle:
              'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...',
          img: Image.asset('image/rohit.jpg'),
          time: '11:40 pm'),
      Chat(
          name: 'Test',
          subtitle:
              'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...',
          img: Image.asset('image/rohit.jpg'),
          time: '11:40 pm'),
      Chat(
          name: 'Test',
          subtitle:
              'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...',
          img: Image.asset('image/rohit.jpg'),
          time: '11:40 pm'),
      Chat(
          name: 'Test',
          subtitle:
              'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...',
          img: Image.asset('image/rohit.jpg'),
          time: '11:40 pm'),
      Chat(
          name: 'Test',
          subtitle:
              'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...',
          img: Image.asset('image/rohit.jpg'),
          time: '11:40 pm'),
      Chat(
          name: 'Test',
          subtitle:
              'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...',
          img: Image.asset('image/rohit.jpg'),
          time: '11:40 pm'),
      Chat(
          name: 'Test',
          subtitle:
              'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...',
          img: Image.asset('image/rohit.jpg'),
          time: '11:40 pm'),
      Chat(
          name: 'Test',
          subtitle:
              'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...',
          img: Image.asset('image/rohit.jpg'),
          time: '11:40 pm'),
    ];
    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: ListView.builder(
          itemBuilder: ((context, index) {
            return Padding(
              padding: const EdgeInsets.all(1.0),
              child: Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: chats[index].img,
                      ),
                    ),
                    subtitle: SizedBox(
                      width: double.infinity,
                      child: Text(
                        chats[index].subtitle,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    title: Text(chats[index].name),
                    trailing: Text(chats[index].time),
                  ),
                  const Divider()
                ],
              ),
            );
          }),
          itemCount: chats.length),
    );
  }
}
