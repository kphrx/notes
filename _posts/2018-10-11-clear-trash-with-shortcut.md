---
category: Technology
tags: Windows PowerShell
date: '2018-10-11 17:49:17 +0900'
redirect_from:
  - /tech/clear-trash-with-shortcut
  - /windows/clear-trash-with-shortcut
hasCodeSnippet: true
---

# ゴミ箱を右クリックせずに空にする

Windows使っててゴミ箱空にするのがめんどくさいと感じたので

<!--more-->


## 方法
ショートカットを新規作成でPowerShellコマンドを実行するショートカットを作成します。他のサイトで書いてあったりしますが、cmd.exeでPowerShell.exeを叩くとか訳がわからないのでもっと簡潔なコマンドで作ります  
ショートカットの作り方とコマンドの入れ方は他所でも普通に書かれているので知っている前提です

### コマンド
```powershell
Clear-RecycleBin -Force
```

Forceフラグを追加することによって削除時の入力を省略する事が出来ます。yを入力する必要はない

### PowerShellのオプション
PowerShellを起動するショートカットにつけるオプション

- `-windowstyle hidden`

   windowstyleの引数にhiddenを渡すことで実行時にウィンドウを表示しないようにします

- `-Command <command>`

   前項にあるコマンドを `<command>` と置き換える

## 終わり
Google検索の一番はじめに書いて合った方法が `cmd.exe /c "echo Y|<PowerShellのコマンド>"` だったので記事にしました。このやり方はダサい  
~~`Force` フラグじゃなくて `echo Y` で通そうとしてるのがダサいし何より `cmd.exe` で実行しようとするのがダサい~~

ショートカットは右クリックでスタートにピン留めしたりダブルクリックで起動した時にタスクバーに固定すれば以後はダブルクリック不要です  
私はスタートに留めました。トラックパッドでダブルクリックめんどくさい
