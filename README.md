## 🌐 App URL
[https://melody-forest.herokuapp.com](https://melody-forest.herokuapp.com)


## Test Account
Eメール：test@test<p></p>
パスワード：testtest<p></p>


## Environment
<li>Ruby on Rails</li>
<li>HTML/SCSS</li>
<li>Javascript/jQuery</li>
<li>データベースはMySQLを使用</li>
<li>デプロイはHerokuで実施</li>


## Background
<li>音楽専門の投稿サイトは数が少ない</li>

音楽専門の投稿サイトは数が少ない/知名度が低いなどの理由でyoutubeやtwitterに投稿する人が多いと感じたことがきっかけです。


<li>音楽は目に見えず、興味を持ってもらいにくい</li>

音楽は目に見えないので作ってもアピールしにくいため、サイトを訪れた人が気軽に聞きたいと思ってもらえるような投稿サービスを作りたいと考えて作り始めました。


## Function
### 1. Home
<p>
  <img src="https://user-images.githubusercontent.com/65595354/87685290-2cf21e00-c7be-11ea-867c-d1f0f4f8df00.png" alt="Home" width="50%" height="50%">  
</p>
<ul>
  <li>投稿データ一覧を確認し、再生できます。</li>
  <li>ログインしている場合、自分の投稿にボタンが表示され、編集/削除ができます。</li>
</ul>

### 2. 詳細・コメント
<p>
  <img src="https://user-images.githubusercontent.com/65595354/87700849-f6260300-c7d1-11ea-9952-7a88551da98c.png" alt="detail・comment" width="50%" height="50%">
</p>
<ul>
  <li>詳細ボタンから遷移できます。</li>
  <li>該当の曲の詳細ページに遷移し、詳細情報やコメントを確認できます。</li>
  <li>ログインしている場合、画面下部からコメント可能です。</li>
  <li>コメントは非同期通信のため、再生中にコメントしても音は途切れません。</li>
</ul>

### 3. 投稿者別作品一覧
<p>
  <img src="https://user-images.githubusercontent.com/65595354/87758266-1e037e00-c847-11ea-8c7d-455ecf6a7fad.png" alt="List of works by poster" width="50%" height="50%">
</p>
<ul>
  <li>投稿者名をクリックすると遷移できます。</li>
</ul>

### 4. ログイン/新規登録
<p>
  <img src="https://user-images.githubusercontent.com/65595354/87758642-cb769180-c847-11ea-85fc-1103ca832aa9.png" alt="register" width="50%" height="50%">
    <img src="https://user-images.githubusercontent.com/65595354/87758434-6cb11800-c847-11ea-8210-9e08f3cd549f.png" alt="login" width="50%" height="50%">
</p>
<ul>
  <li>未ログイン時、ヘッダーのログインボタンから遷移できます。</li>
  <li>アカウント未登録の場合、新規登録ボタンからアカウントを作成できます。</li>
  <li>Eメールとパスワードを入力するとログインできます。</li>
</ul>

### 5. 新規投稿
<p>
  <img src="https://user-images.githubusercontent.com/65595354/87758822-23ad9380-c848-11ea-8fc7-0f4d3a0774c4.png" alt="new post" width="50%" height="50%">
</p>
<ul>
  <li>Homeの投稿するボタン、またはヘッダーの投稿から新規投稿ページに遷移できます。</li>
  <li>タイトル・詳細を入力してファイルを選択後、送信をクリックすると投稿できます。</li>
  <li>投稿が無事に完了すると上部に「投稿が完了しました」とフラッシュメッセージが表示されます。</li>
</ul>

### 6. 編集
<p>
  <img src="https://user-images.githubusercontent.com/65595354/87758915-5f485d80-c848-11ea-95dd-86ec6214c485.png" alt="edit" width="50%" height="50%">
</p>
<ul>
  <li>編集ボタンをクリックすると遷移できます。(ログインユーザと投稿者が一致する場合のみ表示されます。)</li>
  <li>タイトル・詳細を編集できます。(アップロードしたファイル自体は編集できません。)</li>
</ul>

### 7. 削除
<p>
  <img src="https://user-images.githubusercontent.com/65595354/87759352-22c93180-c849-11ea-9032-92594ef195e3.png" alt="delete" width="50%" height="50%">
</p>
<ul>
  <li>ログインユーザと投稿者が一致する場合に削除ボタンが表示されます。</li>
  <li>削除をクリックすると確認ダイアログが表示され、OKをクリックすると削除できます。</li>
</ul>

### 8. マイページ
<ul>
  <li>ヘッダーのアカウント名のプルダウンからマイページを選択すると遷移できます。</li>
  <li>ログインしているアカウントで投稿したデータ一覧が確認できます。</li>
  <li>投稿者別作品一覧と表示は同様です。</li>
</ul>

### 9. アカウント情報
<p>
  <img src="https://user-images.githubusercontent.com/65595354/87759678-a5ea8780-c849-11ea-8013-f584e7331e6a.png" alt="account1" width="50%" height="50%">
    <img src="https://user-images.githubusercontent.com/65595354/87759816-d7fbe980-c849-11ea-9b47-d974d33c1007.png" alt="account2" width="50%" height="50%">
    <img src="https://user-images.githubusercontent.com/65595354/87760255-71c39680-c84a-11ea-8603-a2bbdc018f16.png" alt="account3" width="50%" height="50%">
</p>
<ul>
  <li>編集ボタンからアカウント名、Eメール、パスワードを変更できます。</li>
  <li>プロフィール画像を設定できます。</li>
</ul>

### 10. その他
<ul>
  <li>カテゴリ別投稿一覧ページ、検索機能については引き続き作成中です。</li>
</ul>


## 💬 Usage
ローカルで確認する場合は以下の操作を行います。<p></p>
`$ git clone https://github.com/asuarks/Melody-Forest.git`<p></p>
`$ cd (git cloneしたディレクトリ)`<p></p>
`$ bundle install`<p></p>
`$ rails db:create`<p></p>
`$ rails db:migrate`<p></p>
`$ rails s`<p></p>
以下にアクセス<p></p>
http://localhost:3000


## 🎫 License
<li>MIT</li>


## DB設計
### postsテーブル
|Column|Type|Options|
|------|----|-------|
|title|string||
|file|text||
|detail|text||
|user_id|integer||
#### Association
- belongs_to :user
- has_many :comment

### usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|email|string|null: false|
|password|string|null: false|
#### Association
- has_many :posts
- has_many :comments

### commentsテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer||
|post_id|integer||
|text|text||
#### Association
- belongs_to :post
- belongs_to :user

### profilesテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer||
|name|string||
|avatar|string||
|description|text||
#### Association
- belongs_to :user
