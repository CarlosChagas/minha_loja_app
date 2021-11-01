# minha_loja_app

Aplicativo de vendas para loja virtual de artigos de moda

## Estrutura do projeto

### Main diretório
    main.dart -> responsável por iniciar o app - runApp(App)

### app diretório
    contém app.dart-> configurações do APP - utilização de MaterialApp - title/theme/home
    contém as pastas: models/repositories//sub-pasta componentes/views//sub-pasta componentes

### Entidades - 
    Diretório: 
    models -> camada de modelagem das entidades
  
### Infra - 
    Diretórios:
      repositories-> camada na qual recebe os externos vindos da API. 
        products_repository.dart
      controllers-> intermediário entre as camada reposiories e a camada view. 
        home_controller.dart

### Interface externa (UI)
    Diretorio:
      views-> camada de interface de usuário.
      home.dart

  #### sud-diretório de views:
    componentes-> responsável pela componentização da tela home.dart

