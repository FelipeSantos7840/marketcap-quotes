# 💰 CoinMarketCap Explorer - Flutter App

Aplicativo desenvolvido como parte do **trabalho  da disciplina de _Programação para Dispositivos Móveis_**, com o objetivo de consumir a API da CoinMarketCap e apresentar dados atualizados sobre criptomoedas de forma acessível e responsiva.

---

## 👨‍🎓 Informações do Aluno

- **Nome:** _Felipe dos Santos Maniezo de Freitas_
- **RA:** _24224651-2_

---

## 🚀 Tecnologias Utilizadas

- **Flutter**
- **Dart**
- **GetX** (Gerenciamento de estado e navegação)
- **Dio** (Requisições HTTP)
- **CoinMarketCap API** (Dados de criptomoedas)

---

## 🧱 Estrutura do Projeto

A estrutura do projeto segue uma abordagem modularizada e orientada a features, com separação entre:

- `data/`: fontes de dados e repositórios
- `domain/`: entidades e regras de negócio
- `ui/`: páginas, view models e widgets
- `core/` e `utils/`: configurações gerais e utilitários

---

## ⚙️ Como Gerar o Executável

Siga os passos abaixo para gerar o aplicativo:

1. **Clone o repositório:**

   ```bash
   git clone https://github.com/seu-usuario/seu-repositorio.git
   cd seu-repositorio

2. **Instale as dependências do projeto:**

    ```bash
    flutter pub get

3. **Execute localmente em modo debug (emulador ou dispositivo conectado):**

    ```bash
    flutter run

4. **Gere o APK para Android (modo release):**

    ```bash
    flutter build apk --release

5. **Localize o arquivo gerado:**

    ```bash
    build/app/outputs/flutter-apk/app-release.apk
