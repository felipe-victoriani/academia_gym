import 'package:academia_gym/_comum/minhas_cores.dart';
import 'package:academia_gym/componentes/decoracao_campo_autenticacao.dart';
import 'package:flutter/material.dart';

class AutenticacaoTela extends StatefulWidget {
  const AutenticacaoTela({super.key});

  @override
  State<AutenticacaoTela> createState() => _AutenticacaoTelaState();
}

class _AutenticacaoTelaState extends State<AutenticacaoTela> {
  bool queroEntrar = true;
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  MinhasCores.azulTopoGradiente,
                  MinhasCores.azulBaixoGradiente,
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: formKey,
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Image.asset("assets/logo.png", height: 128),
                      const Text(
                        "GYM APP",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 32),
                      TextFormField(
                        decoration: getAuthenticationInputDecoration("Email"),
                        validator: (String? value) {
                          if (value == null) {
                            return "O email é obrigatório";
                          }
                          if (value.length < 5) {
                            return "O email deve ter pelo menos 5 caracteres";
                          }
                          if (!value.contains("@")) {
                            return "O email deve conter '@'";
                          }

                          return null;
                        },
                      ),
                      const SizedBox(height: 8),
                      TextFormField(
                        decoration: getAuthenticationInputDecoration("Senha"),
                        obscureText: true,
                        validator: (String? value) {
                          if (value == null) {
                            return "A senha é obrigatório";
                          }
                          if (value.length < 5) {
                            return "A senha deve ter pelo menos 5 caracteres";
                          }

                          return null;
                        },
                      ),
                      const SizedBox(height: 8),
                      Visibility(
                        visible: !queroEntrar,
                        child: Column(
                          children: [
                            TextFormField(
                              decoration: getAuthenticationInputDecoration(
                                "Confirme a Senha",
                              ),
                              obscureText: true,
                              validator: (String? value) {
                                if (value == null) {
                                  return "A confirmação de senha é obrigatória";
                                }
                                if (value.length < 5) {
                                  return "A confirmação de senha deve ter pelo menos 5 caracteres";
                                }

                                return null;
                              },
                            ),
                            const SizedBox(height: 8),
                            TextFormField(
                              decoration: getAuthenticationInputDecoration(
                                "Nome",
                              ),
                              validator: (String? value) {
                                if (value == null) {
                                  return "O nome é obrigatório";
                                }
                                if (value.length < 5) {
                                  return "O nome deve ter pelo menos 5 caracteres";
                                }

                                return null;
                              },
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 16),
                      ElevatedButton(
                        onPressed: () {
                          botaoPrincipalClicado();
                        },
                        child: Text((queroEntrar) ? "entrar" : "cadastrar"),
                      ),
                      Divider(),
                      TextButton(
                        onPressed: () {
                          setState(() {
                            queroEntrar = !queroEntrar;
                          });
                        },
                        child: Text(
                          (queroEntrar)
                              ? "Quero me Cadastrar"
                              : "Já tenho Cadastro",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  botaoPrincipalClicado() {
    if (formKey.currentState!.validate()) {
      print("Formulário válido");
    } else {
      print("Formulário inválido");
    }
  }
}
