# 掲示板アプリ
<p align="center">
<img width="483" alt="スクリーンショット 2020-02-07 16 24 24" src="https://user-images.githubusercontent.com/57832553/74009358-5795aa80-49c6-11ea-8fa6-76b178cb71e8.png">
</p>

## :star: アピールポイント
- ログインしていない状態で投稿しようとすると、フラッシュメッセージ付きでログイン画面に遷移するようにした
- カテゴリーは一覧から

</br>

## :cloud: Infrastructure Configuration Diagram
<p align="center">
<img width="518" alt="スクリーンショット 2020-01-09 19.39.05.png" src="https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/543133/9fdc0354-dc5c-4c13-3ecb-cd43976926e1.png">
</p>

</br>

## :globe_with_meridians: App URL

### **https://www.smacard66.com/cards/top**  

</br>

## :speech_balloon: Installation

```
$ git clone https://github.com/sunadoi/card_management.git
$ cd card_management
$ docker-compose build
$ docker-compose run --rm app rails db:create
$ docker-compose run --rm app rails db:migrate
$ docker-compose -f development.yml up -d
👉http://localhost/
```

</br>

## :eyes: E-R Diagram

<img width="884" alt="スクリーンショット 2020-02-03 16.11.18.png" src="https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/543133/7dace54c-a636-d9f4-4c05-68fc6f1791a4.png">

</br>

## :smile: Author
- <a href="https://github.com/sunadoi/card_management">Github</a>
- <a href="https://twitter.com/suna_tech">Twitter</a>
- <a href="https://qiita.com/y-suna">Qiita</a>
- <a href="https://note.com/sunadoi">note</a>
