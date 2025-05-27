# App Agendamentos

**ESTRUTURA DO PROJETO**

```
agendamentos/
│
├── lib/
│   ├── main.dart
│   │
│   ├── app.dart
│   │
│   ├── model/
│   │   ├── agendamento.dart
│   │   └── repositorio_agendamentos.dart
│   │
│   ├── controller/
│   │   └── controlador_agendamentos.dart
│   │
│   ├── view/
│   │   ├── pagina_inicial.dart
│   │   ├── formulario_agendamento.dart
│   │   ├── item_lista_agendamento.dart
│   │   └── widgets/
│   │       ├── botao_personalizado.dart
│   │       └── campo_texto_personalizado.dart
│   │
│   ├── utils/
│   │   ├── util_datas.dart
├── pubspec.yaml
├── README.md
└── .gitignore
```

---

📱 **Instalação do Aplicativo (APK)**

O arquivo de instalação do aplicativo (APK) para celular `Android` está disponível na pasta `apk\app-release.apk (20.3MB)`.

Obs: Abra o arquivo `apk\app-release.apk (20.3MB)` pelo navegador, no aplicativo ele não é suportado. 

✅ Como instalar o APK no seu celular Android:
Atenção: Esse processo é seguro, mas o sistema pode alertar que o app é de fonte desconhecida.

Acesse a pasta supracitada do projeto e baixe o arquivo `app-release.apk` para o seu celular.

Abra o arquivo `app-release.apk` no celular Android após o download.

O Android pode exibir um aviso como "Por segurança, seu telefone não tem permissão para instalar apps desconhecidos."

Clique em Configurações e ative a opção "Permitir desta fonte" (ou algo parecido).

Volte para a instalação e clique em Instalar.

Pronto! O aplicativo será instalado no seu celular.

---

<img src="https://github.com/user-attachments/assets/8f6ecbb2-eedb-4fc8-a638-8d757cc743a7" width="300"/>
<img src="https://github.com/user-attachments/assets/8cece343-1a50-4ece-8502-ceb602da58eb" width="300"/>
<img src="https://github.com/user-attachments/assets/f01c4559-d6be-4d6b-b5e8-96f575c0bd76" width="300"/>

---

**Manual de Uso - Aplicativo de Agendamentos Simplificado**

**1. Introdução:**

Este aplicativo foi desenvolvido para ajudar pequenos empreendedores e prestadores de
serviços a organizar seus agendamentos de forma simples, prática e eficiente.
Funciona offline, com os dados armazenados localmente no próprio celular ou computador.

---

**2. Funcionalidades principais**

•     Adicionar novos agendamentos.
•     Editar agendamentos existentes.
•     Excluir agendamentos indesejados.
•     Listar agendamentos em ordem automática pela data e hora.
•     Selecionar data pelo calendário.
•     Selecionar hora pelo relógio.
•     Armazenamento local e seguro.

---

**3. Como usar o aplicativo**

*3.1. Tela Inicial*

• Exibe todos os agendamentos cadastrados, ordenados automaticamente pela data e hora.
• Cada agendamento exibe:

```
Nome do cliente
Serviço
Data e hora no formato: dd-MM-aaaa , HH:mm:ss
```

• Ao lado de cada agendamento, há dois botões:
Editar
Excluir

---

*3.2. Adicionar um novo agendamento:*

1. Clique no botão flutuante + no canto inferior direito.

2. Preencha os campos:

   o Cliente: nome da pessoa ou empresa.
   o Serviço: o serviço a ser prestado.
   o Observações: detalhes adicionais (opcional).

3. Clique no ícone de calendário para selecionar a data.

4. Após selecionar a data, selecione também a hora pelo relógio.

5. Clique no botão Salvar.

---

*3.3. Editar um agendamento*

1. Na lista de agendamentos, encontre o item que deseja editar.

2. Clique no ícone (editar).

3. Altere as informações conforme necessário.

4. Clique em Salvar para confirmar.

---

*3.4. Excluir um agendamento*

1. Na lista de agendamentos, encontre o item que deseja excluir.

2. Clique no ícone (lixeira).

3. O agendamento será removido imediatamente da lista.

5. Armazenamento de dados

   • Todos os agendamentos são armazenados localmente, utilizando a tecnologia Hive.
   • Não é necessário conexão com a internet para usar o aplicativo.
   • Os dados são persistentes, ou seja, permanecem salvos mesmo após fechar o app.

6. Recursos técnicos

   • Desenvolvido em Flutter (Dart).
   • Multiplataforma: Android e Web.
   • Armazenamento local com Hive.
   • Interface moderna e intuitiva com Material Design 3.

7. Recomendações de uso

   • Mantenha sempre os dados atualizados.
   • Realize backups periódicos caso queira migrar os dados para outro dispositivo.
   • Utilize o aplicativo para melhorar sua organização e a satisfação de seus clientes.

8. Suporte e contato

   Em caso de dúvidas ou sugestões, entre em contato com o desenvolvedor ou professor
   orientador do projeto.

9. Conclusão
   Este aplicativo foi criado para facilitar a rotina dos microempreendedores, promovendo a
   organização eficiente dos agendamentos, com simplicidade e segurança.
   Aproveite todos os recursos e melhore a gestão do seu negócio!          
