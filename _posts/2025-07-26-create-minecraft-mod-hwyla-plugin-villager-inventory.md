---
category: Game
tags: Minecraft
eye_catch: https://cdn.modrinth.com/data/ESa9RivE/images/ea127410a4c913adb12de3104699331b622ae604.png
eye_catch_alt: Jadeで農民の村人に出てくる表示にインベントリが追加されている
hasCodeSnippet: true
date: '2025-07-26 01:56:25 +0900'
---
# Minecraft の Mod 「Jade」や「WTHIT」に村人のインベントリを表示するプラグイン

Fabric の Mod を作成して Modrinth に公開した。設定等はなく Jade または WTHIT が入っていれば機能する。

<!--more-->

初めての Minecraft Modding のため、今後 Modding するにあたって役に立つかもしれない知見等を残す。

## Mod 概要
[Modrinth の Gallery](https://modrinth.com/mod/villager-inventory-hwyla-plugin/gallery) にあるような表示にする以上も以下もないので、作品そのものについてはそちらを見てほしい。ソースコードは [GitHub](https://github.com/kphrx/villager-inventory-hwyla-plugin) にある。

Minecraft 1.21.6 対応の Jade 19.0.1 以降の API に依存しているため、対応バージョンは Minecraft 1.21.6-1.21.8 になっている。WTHIT には影響しない要素ではあるがビルドを分離していないので 1.21.5 以下には対応しない。

## プロジェクトの構成
Fabric のテンプレート Mod 生成で Kotlin と Mojang Mapping, Split client and common sources を有効にして生成したものから Mixin を取り除いた状態がベース。テンプレートは Fabric Loom を利用した構成になっており、Forge/NeoForge 用のビルドはまた別の Gradle プラグインが必要になるため Fabric のみの対応となる。

Gradle Version Catalog を使用し、Minecraft や Fabric Loader などバージョンを一括で管理する。ktfmt でコードスタイルを整える。Groovy を利用している `build.gradle` などは将来的に Kotlin スクリプトに移行させたいが、現状は Groovy で困っていないのでそのまま。

## Modrinth への公開
Gradle プラグインの [Minotaur](https://plugins.gradle.org/plugin/com.modrinth.minotaur) を利用して公開する。Version Catalog を使用しているので `libs.versions.minecraft.get()` で Minecraft のバージョンを取得できるが前方互換がある際の複数バージョンを指定するにはそれでは足りないので `gradle.properties` にカンマ区切りで定義しておき、以下のようにすることになる。

```groovy
// ...

modrinth {
	// ...
	gameVersions = [libs.versions.minecraft.get(), *project.minecraft_forword_compatible_versions.split(",").collect { it.trim() }.findAll { it != "" }]
	// ...
}
```

## Mod の前方互換性について
前提 MOD に対しては 1.21.5 以下の後方互換性を失っている原因の JadeUI のように、直接依存している Jade および WTHIT の API の変更がある場合は当然互換性が失われる。

Minecraft との互換性は API へのマッピングに Mojang 公式のマッピングを使用するようにしているが、コンパイルの時に Obfuscated を経由して Intermediary へ変換されるので yarn マッピングと Intermediary の関係に変更がないか確認することになる。Obfuscated ほどの難読化されてバージョン間の互換性が簡単に変わるようなマッピングではないものの Intermediary を使用するのは避けられないため、対応バージョンのマッピングだけ更新してコードベースを変更することなく対応させるだけの作業が発生しうる。

うまくやれば実際に動かして確認することなく非互換バージョンを網羅できるだろうが、そう言った周辺ツールは FabricMC からは提供されていなさそう。

## Jade と WTHIT の差異
プラグイン作成にあたって Kotlin を使用する時の注意を払うべき点や fork の対応時の共通化についてのアーキテクチャに関係する要点。

### エントリーポイント
- Jade: Fabric Loader のエントリーポイント機能を利用しているので Fabric Language Kotlin のアダプターがそのまま使えることで `object` を `@WailaPlugin` として実装可能。
  - Forge 向けに対応しようとした場合、Jade は JavaClass を探してインスタンスを生成するため、WTHIT と同じような実装にする必要がある。
- WTHIT: 旧来の WAILA から引き継いでいると思われる独自のエントリーポイント指定と読み込みの実装になっており、Kotlin のアダプターを通すことはできず Java のインスタンス初期化を呼び出そうとするため `object` ではなく `class` でエントリーポイントを実装する必要がある。

### クライアントとサーバーの分離
- Jade: プラグインのインターフェースにサーバー用とクライアント用の関数が共に定義されており、分離するには `IWailaPlugin` を実装したクラスが2つ必要になる。
- WTHIT: プラグインのインターフェースがサーバー用とクライアント用にそもそも分離されたものが推奨されており、`IWailaCommonPlugin` と `IWailaClientPlugin` をそれぞれ実装する。

### サーバーデータのやり取り
- Jade: `CompoundTag` を直接利用しており `EntityAccessor` に `decodeFromNbt` と `encodeToNbt` が定義されているため `ItemStack` の `OPTIONAL_LIST_STREAM_CODEC` を渡すことで NBT のやり取りができる。
- WTHIT: Jade とは異なり独自のインターフェース `IDataReader` が使用されるが `raw` から `CompoundTag` を利用できる。しかし NBT 向けのエンコード用のインターフェースが用意されているわけではないため `StreamCodec` の `decode` と `encode` を直接呼び出す必要がある。
    - `CompoundTag` を利用しない場合に `IDataReader` は `IData` を実装したクラスでやり取りするので、今回のような目的の実装をする場合には `ItemData` を利用すればよいかもしれない。

### アイテムの表示
- Jade: WTHIT とは異なりアイテムリスト用のコンポーネントが用意されているわけではないが、19.0.1 以降のリワークされた GUI API では `JadeUI` の `item` から `ItemStack` の `Element` を生成して `ITooltip` にそのリストを追加するという形になっている。
- WTHIT: `ItemListComponent` を用意しており `List<ItemStack>` を渡して `ITooltip` に追加するだけで良い。
