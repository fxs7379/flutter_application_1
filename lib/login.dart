import 'dart:convert';
import 'package:flutter_application_1/status.dart';
import 'package:flutter_application_1/user.dart';

import 'package:bot_toast/bot_toast.dart';
import 'package:crypto/crypto.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:window_manager/window_manager.dart';

class loginPage extends StatefulWidget {
  const loginPage({super.key});

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  @override
  void initState() {
    super.initState();
    // bool? isRememberMe = Status.prefs.getBool("isRememberMe");
    // Status.isRememberMe = isRememberMe ?? Status.isRememberMe;
    // if(Status.isRememberMe){
    // String? username = Status.prefs.getString("username");
    // String? password = Status.prefs.getString("password");
    // Status.user = User(0, username ?? "", password ??"",  "", "", "",0);
    // }
  }

  @override
  Widget build(BuildContext context) {
    String username = "";
    String password = "";
    if (Status.isRememberMe) {
      username = Status.user.username;
      password = Status.user.password;
    }
    double height = MediaQuery.of(context).size.height; //获得屏幕高度
    return Scaffold(
      body: Stack(
        alignment: Alignment.center, //设置居中
        children: [
          Container(
            decoration: const BoxDecoration(
              //decoration：背景设定
              image: DecorationImage(
                image: AssetImage("/background.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            constraints: const BoxConstraints(maxWidth: 600),
            padding: const EdgeInsets.only(left: 50, right: 50),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.background.withOpacity(0.5),
            ),
            child: Column(
              children: [
                const SizedBox(height: 40, child: Text("")),
                Text(
                  "基于地基可见光天空图像的云量等级识别系统",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context)
                        .colorScheme
                        .onBackground
                        .withOpacity(0.8), //withopacity：透明度设置
                  ),
                ),
                const Expanded(child: Text("")),
                TextFormField(
                  initialValue: username,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                    label: Text(
                      "用户名",
                      style: TextStyle(
                        fontWeight: FontWeight.w500, //设置字体粗细，默认400
                        fontSize: 20,
                      ),
                    ),
                  ),
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  ),
                  onChanged: (value) {
                    username = value;
                  },
                ),
                const SizedBox(
                  height: 40,
                  child: Text(""),
                ),
                TextFormField(
                  initialValue: password,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    label: Text(
                      "密码",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  obscureText: true,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  ),
                  onChanged: (value) {
                    password = value;
                  },
                ),
                const Expanded(flex: 3, child: Text("")),
                ElevatedButton(
                  onPressed: () {
                    onLoginPressed(username, password);
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    child: const Text(
                      "登录",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20), //竖向排列
                ElevatedButton(
                  onPressed: () {
                    windowManager.close();
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    child: const Text(
                      "退出",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                  child: Text(""),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  onLoginPressed(String username, String password)  {
    Status.login = true;
    setState(() {});
    // BotToast.showLoading();
    // String passwordsha256 = sha256.convert(utf8.encode(password)).toString();
    // var response = await http.post(
    //   Uri.parse("${Status.baseUrl}/login"),
    //   body: {"username": username, "password": passwordsha256},
    // );
    // String bodyString = utf8.decode(response.bodyBytes);
    // BotToast.closeAllLoading();
    // if (bodyString == "") {
    //   BotToast.showText(text: "登录失败，请确认用户名和密码输入正确");
    // } else {
    //   var body = jsonDecode(bodyString);
    //   Status.user = User.objToUser(body);
    //   Status.user.password = password;
    //   BotToast.showText(text: "登录成功，欢迎您！");
    //   // if(Status.isRememberMe){
    //   // Status.prefs.setString("username", Status.user.username);
    //   // Status.prefs.setString("password", Status.user.password);
    //   // }
    //   Status.login = true;
    // }
  }
}
