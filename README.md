# 掲示板アプリ
<p align="center">
<img width="960" alt="スクリーンショット 2020-02-07 16 24 24" src="https://user-images.githubusercontent.com/57832553/75529866-f27a2580-5a56-11ea-9326-c8e6e7578000.png">
</p>

## :star: アピールポイント
- 制作期間丸2日(2/26-2/28)
- ユーザーログイン情報はページに貼ってあります
- チーム開発を意識してブランチを切ってプルリクエストを作成しました
- モデルの単体テストを10個書きました
<br>

- ログインしていない状態で投稿しようとすると、フラッシュメッセージ付きでログイン画面に遷移するようにした
- スレッドのタイトルなどを空の状態で投稿しようとするとフラッシュメッセージを表示するようにした
- カテゴリーは一覧からチェックボックスで選択できるようにした
- スレッド一覧画面ではタイトルとカテゴリーと1レス目を表示

</br>

## :speech_balloon: Installation

```
$ git clone https://github.com/sunadoi/bulletin_board.git
$ cd bulletin_board
$ bundle install
$ rails db:create
$ rails db:migrate
$ rails db:seed
$ rails s
👉http://localhost:3000/
```

</br>

## :eyes: E-R Diagram

<img width="884" alt="スクリーンショット 2020-02-03 16.11.18.png" src="https://user-images.githubusercontent.com/57832553/75529893-f443e900-5a56-11ea-959c-aaddfaa50472.png">

</br>

## :smile: Author
- <a href="https://github.com/sunadoi">Github</a>
- <a href="https://twitter.com/suna_tech">Twitter</a>
- <a href="https://qiita.com/y-suna">Qiita</a>
- <a href="https://note.com/sunadoi">note</a>
