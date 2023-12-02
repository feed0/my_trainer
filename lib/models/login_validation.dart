class Validation {
  String? campoEmail(String email) {
    if (email.isEmpty) {
      return 'Entre com seu e-mail.';
    } else if (!email.contains('@') || !email.contains('.com')) {
      return 'O email deve conter o formato: nome@email.com';
    } else if (email.length < 3) {
      return 'E-mail muito curto.';
    }
    return null;
  }

  String? campoSenha(String senha) {
    if (senha.isEmpty) {
      return 'Entre com sua senha.';
    } else if (senha.length < 6) {
      return 'Senha muito curta.';
    }
    return null;
  }
}
