# 掲示板アプリ
<p align="center">
<img width="483" alt="スクリーンショット 2020-02-07 16 24 24" src="https://user-images.githubusercontent.com/57832553/74009358-5795aa80-49c6-11ea-8fa6-76b178cb71e8.png">
</p>

## :star: アピールポイント
- 制作期間丸2日(2/26-2/28)
- ログインしていない状態で投稿しようとすると、フラッシュメッセージ付きでログイン画面に遷移するようにした
- スレッドのタイトルなどを空の状態で投稿しようとするとフラッシュメッセージを表示するようにした
- カテゴリーは一覧からチェックボックスで選択できるようにした
- スレッド一覧画面ではタイトルとカテゴリーと1レス目を表示

</br>

## :speech_balloon: Installation

```
$ git clone https://github.com/sunadoi/bulletin_board.git
$ cd bulletin_board
$ rails db:create
$ rails db:migrate
$ rails db:seed
$ rails s
👉http://localhost:3000/
```

</br>

## :eyes: E-R Diagram

<img width="884" alt="スクリーンショット 2020-02-03 16.11.18.png" src="https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/543133/7dace54c-a636-d9f4-4c05-68fc6f1791a4.png">

</br>

## :smile: Author
- <a href="https://github.com/sunadoi">Github</a>
- <a href="https://twitter.com/suna_tech">Twitter</a>
- <a href="https://qiita.com/y-suna">Qiita</a>
- <a href="https://note.com/sunadoi">note</a>
