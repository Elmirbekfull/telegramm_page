import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_ios),
        centerTitle: true,
        title: const Text('Настройки'),
      ),
      body: Container(
        width: double.infinity,
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _UserInfo(),
            SizedBox(height: 30,),
            _SecondWidget(),
            SizedBox(height: 15,),
            _ThirdWidget(),
            SizedBox(height: 15,),
            FourthWidget()
          ],
        ),
      ),
    );
  }
}


class _SecondWidget extends StatelessWidget {
  const _SecondWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      child: const Column(children: [
        Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Row(children: [
                Icon(Icons.bookmark , color: Color.fromARGB(255, 31, 71, 214), ),
                SizedBox(width: 15,),
                Expanded(child: Text("Избранное", style: TextStyle(
                  fontSize: null
                ),),), // добавление chervon под конец
                   Icon(Icons.chevron_right_rounded),
              ],
              ),
            ),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Row(children: [
                Icon(Icons.call , color: Color.fromARGB(255, 44, 230, 87), ),
                SizedBox(width: 15,),
                Expanded(child: Text("Недавные звонки"),), // добавление chervon под конец
                   Icon(Icons.chevron_right_rounded),
              ],
              ),
            ),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Row(children: [
                Icon(Icons.computer , color: Color.fromARGB(255, 241, 167, 7), ),
                SizedBox(width: 15,),
                Expanded(child: Text("Устройства"),), // добавление chervon под конец
                   Icon(Icons.chevron_right_rounded),
              ],
              ),
            ),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Row(children: [
                Icon(Icons.folder , color: Color.fromARGB(255, 31, 71, 214), ),
                SizedBox(width: 15,),
                Expanded(child: Text("Папка с чатами"),), // добавление chervon под конец
                   Icon(Icons.chevron_right_rounded),
              ],
              ),
            ),
      ],),
    );
  }
}




class _ThirdWidget extends StatelessWidget {
  const _ThirdWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      child: const Column(children: [
        Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Row(children: [
                Icon(Icons.download , color: Color.fromARGB(255, 31, 71, 214), ),
                SizedBox(width: 15,),
                Expanded(child: Text("Telegramm Premium"),), // добавление chervon под конец
                   Icon(Icons.chevron_right_rounded),
              ],
              ),
            ),
      ],),
    );
  }
}


class FourthWidget extends StatelessWidget {
  const FourthWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      child: const Column(children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: Row(children: [
            Icon(Icons.list, color: Color.fromARGB(255, 236, 55, 245)),
            SizedBox(width: 15,),
            Expanded (child: Text("Помощь"),),
            Icon(Icons.chevron_right_rounded)
          ],),
          ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: Row(children: [
            Icon(Icons.help, color: Color.fromARGB(255, 251, 34, 15)),
            SizedBox(width: 15,),
            Expanded (child: Text("Вопросы о telegramm"),),
            Icon(Icons.chevron_right_rounded)
          ],),
          ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: Row(children: [
            Icon(Icons.person, color: Colors.grey),
            SizedBox(width: 15,),
            Expanded (child: Text("Добавить аккаунт", style: TextStyle(
              color: Colors.grey, 
              fontWeight: FontWeight.w600
              
              ),),),
            Icon(Icons.chevron_right_rounded)
          ],),
          ),
      ],),
    );
  }
}



class _UserInfo extends StatelessWidget {
  const _UserInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      child: const Column(
        children: [
          SizedBox(height: 30,),
          _AvatarWidget(),
          SizedBox(height: 10,),
          _UserNameWidget(),
          SizedBox(height: 10,),
          _UserPhone(),
          SizedBox(height: 5,),
          _UserNickNameWidget(),
        ],
      ),
    );
  }
}

class _UserNickNameWidget extends StatelessWidget {
  const _UserNickNameWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      "@_abdymanapov777",
      style: TextStyle(
        color: Colors.grey,
        fontSize: 15,
      ),
    );
  }
}

class _UserPhone extends StatelessWidget {
  const _UserPhone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      "+996 701 468 346",
      style: TextStyle(
        color: Colors.grey,
        fontSize: 15,
      ),
    );
  }
}

class _UserNameWidget extends StatelessWidget {
  const _UserNameWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Elmirbek Abdymanapov",
      style: TextStyle(
        color: Colors.black87,
        fontSize: 25,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}

class _AvatarWidget extends StatelessWidget {
  const _AvatarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      child: const Placeholder(),
    );
  }
}





