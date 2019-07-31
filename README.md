# README
## RunCode

プログラミングをオンラインで実行できるアプリケーションです。

環境構築が不要なので、手軽にプログラミングをすることができます。

星マークをクリックすることで、初学者向けの問題がランダムで出題されます。

ユーザー登録をすることで、記述したコードを保存したり更新することもできます。

https://run-code.herokuapp.com/

テストユーザー：test1234
テストPW：test1234

<img width="1171" alt="RunCode" src="https://user-images.githubusercontent.com/45886640/61791885-328c8080-ae56-11e9-9829-69e4143d3834.png">

## Specification

* 要件定義書

 https://drive.google.com/open?id=1jj1fiNK0vXrES93WUVm6gpZ94bl2TuDb8Nsswfs_0O4

* テーブル定義書

 https://drive.google.com/open?id=19fAOxtH7NL9xO2wN5FaWKcCw7V9eh-emoLCrT98fNYY
 
 * テスト仕様書
 
 https://drive.google.com/open?id=1jTZfh2pWODJvNXO4-o9sj8SDmtvbygBm

## Version

* Ruby 2.5.3

### FW

* Ruby on Rails 5.2.3

* jQuery 2.2.0

* Bootstrap 4

### Test FW

* RSpec 3.8

### Database

* MySQL 8.0.16

### Environment

* 開発環境：docker,docker-compose
* 本番環境：AWS EC2(ECR、RDS、Route53を利用)
* デプロイ：AWS ECS

## Development Terminal

* Mac OS

## Version control tool

* Git
* GitHub

## How To Use
### コード実行
1. トップページの[Let's Try!]をクリック
1. プログラミング言語を選択
1. コードをエディタに記述
1. 実行（Ctrl+Enter）をクリック
1. 実行結果が標準出力・標準エラー出力・実行時間（秒）に出力される
<img width="1128" alt="実行結果" src="https://user-images.githubusercontent.com/45886640/61796601-aa5fa880-ae60-11e9-9c6c-65079c1e0a8c.png">

---

### 問題の出題
1. 星マークをクリックする
1. 初学者向けの問題がランダムに出題されます。
1. 検索力（ググり力）で問題を解けるよう、検索ワードのヒントも表示されます。
<img width="1179" alt="問題" src="https://user-images.githubusercontent.com/45886640/61796902-4be6fa00-ae61-11e9-9860-35b43a34d439.png">

---

### ユーザー登録
1. トップページの[Sign Up]をクリック
1. ユーザー登録のモーダル画面に、登録内容を入力する（Facebook・Twitterでのソーシャルサインオンも可能）
1. 新規登録が完了し、コードの保存が可能となる
<img width="516" alt="新規登録" src="https://user-images.githubusercontent.com/45886640/61796280-070e9380-ae60-11e9-9bd4-1a0ceb90f7f7.png">

---

### ログイン
※ユーザー登録が事前にされていることが前提
1. トップページの[Login]をクリック
1. ログインのモーダル画面に、ユーザー情報を入力する（Facebook・Twitterでのソーシャルサインオンも可能）
1. ログインが完了し、コードの保存が可能となる
<img width="519" alt="ログイン" src="https://user-images.githubusercontent.com/45886640/61796368-358c6e80-ae60-11e9-982b-8424de34ea2d.png">

---

### コードの保存
※事前にユーザーログインしていることが前提
1. エディタにコードを記述し、[コードを新規登録]をクリック
1. [コード一覧]をクリックすると、新規登録したコードが表示される
<img width="1202" alt="コード一覧" src="https://user-images.githubusercontent.com/45886640/61795592-bcd8e280-ae5e-11e9-8ad4-8c3d3ca5c94c.png">

---

### コードの更新
※事前にユーザーログインしていることが前提
1. [コード一覧]をクリック
1. 編集したいコードの編集アイコンをクリックする
1. 該当のコードがエディタに表示される
1. [更新して保存]をクリックすると、コードが更新される
<img width="1251" alt="編集" src="https://user-images.githubusercontent.com/45886640/61795817-34a70d00-ae5f-11e9-9ef5-bffd57d59c28.png">

---

### コードの削除
※事前にユーザーログインしていることが前提
1. [コード一覧]をクリック
1. 削除したいコードのゴミ箱アイコンをクリックする
1. 本当に削除して良いか確認画面が表示される
1. 削除して良ければ[OK]をクリックする
<img width="1185" alt="削除" src="https://user-images.githubusercontent.com/45886640/61796094-b4cd7280-ae5f-11e9-94cd-9f4985dcac9d.png">

---

### ログアウト
※事前にユーザーログインしていることが前提
1. [Logout]をクリックする
<img width="1070" alt="ログアウト" src="https://user-images.githubusercontent.com/45886640/61796716-f14d9e00-ae60-11e9-884d-ad8a87c9f3d4.png">

---
