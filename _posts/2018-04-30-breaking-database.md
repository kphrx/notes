---
category: Memo
date: '2018-04-30 19:57:35 +0900'
redirect_from:
  - /misc/breaking-database
  - /blog/breaking-database
---

# データベースを吹っ飛ばしてしまった話

MariaDB消しとばしたorz

<!--more-->

先日、サーバーのOSをアップグレードしました  
それに伴っていくつかのパッケージを整理していたのですが、その際に誤ってmariadbを削除してしまいました

それで入れ直したはいいものの以前入れていたmariadbが `/var/lib/mysql-10.2` にディレクトリを置いてまして、入れ直したmariadbは一般的な `/var/lib/mysql` になっていてまず困りました。この時点で私はMySQLのInnoDBでこのディレクトリの下にあるものを全てバックアップしなければならないことに気づいていませんでして……  
不用意に古い方のディレクトリを消してしまったわけです

それからそのディレクトリのデータベースファイルをバックアップして、`extundelete` なるものを発見して意気揚々とリストアしたら `/var/lib/mysql-10.2` のなかにmysqlなんてディレクトリはなく……

`lost+found` ディレクトリにはその中身らしきファイルはいくつか見つかったんですがまあそれを元に戻すなんていう気力があるわけもなく今に至るという感じです

というわけでこのブログへ外からアクセスが来る主な記事をGoogle検索のキャッシュにお力添えをしていただき（ほんとすごいなこのキャッシュ……）なんとか復旧できたという感じです

今回学んだ教訓

1. OS の更新をするときはバックアップしないでやるなんていうアホなことはしない
2. データベースは定期的にバックアップしておく
3. もしバックアップしていても安易にディレクトリを削除しない

正直、自分が開発した短縮URLや気象庁のXML電文の蓄積を失ったというのは結構きつい……

まだ名残惜しくibdファイルを残してますが、もしうまいこといけば過去の記事やデータを全て元に戻せる可能性があるのでどうにかやるだけやってみようかなぁという感じです  
stringsコマンドがUTF8の文字を出してくれないのでめんどくさそうではあります

という自戒の意味も込めた記事でした。現在復旧させている記事以外は~~正直復旧する価値を感じてないので~~しばらくこのままかなぁという感じ  
NowPlayingTweetの開発記録なんかもうやる気ないところへデータ全て吹っ飛ぶって感じですからもうやりません  
まぁ自作したProductなんで紹介記事ぐらいは書きます

それと開発停止しているNicoDownloader、ニコニコのプレミアム解約したのもあってモチベが全くなかったんですが、NowPlayingTweet作ってる時にこれのUIが気にくわないというかソースから修正したい気分にはなったので近いうちに新しいバージョンでも出して記事書こうかなと。あとその記事が他所のサイトからリンクされてるのを思い出したので復旧させなければなぁと

私のProductは[ここ](https://www.kr-kp.com/)にリンクがありますので興味がある方はのぞいてください  
基本MacアプリとWebかコマンドラインのアプリしか作ってませんが、機会があればWindowsアプリケーションの開発もやってみたいなぁ

