import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:todo/screens/login_screen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // texto de criar conta
              Text("Criar nova conta", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),

              // criação de email onde colocam na variavel TextEditingController emailController = TextEditingController();
              TextField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  labelText: "Cadastre seu e-mail",
                ),
              ),

              // criação de senha onde colocam na variavel TextEditingController passwordController = TextEditingController();
              TextField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Cadastre sua sennha",
                ),
              ),

              //criar botão de criaçao de conta
              ElevatedButton(
                  onPressed: (){
                    debugPrint("Email: ${emailController.text}, Senha: ${passwordController.text}");
                  },
                  child: Text("Criar conta")
              ),

              // texto que pergunta se a conta ja foi criada
              Text("Já tem uma conta criada?", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),

              // criando um botão onde ele redireciona o para a tela de login
              TextButton(
                  onPressed: (){

                    // link de redirecionamento para a tela loginScreen
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => LoginScreen())
                    );
                  },

                  // texto do botão
                  child: Text("ir para acessar sua conta", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, decoration: TextDecoration.underline),),
              ),
            ],
          ),
        ),
      )
    );
  }
}