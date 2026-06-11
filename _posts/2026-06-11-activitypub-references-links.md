---
category: Technology
tags: ActivityPub W3C SWICG Mastodon GoToSocial WebFinger
date: 2026-06-11 00:00 +0000
---
# ActivityPub 関連の仕様書まとめ

ActivityPub 実装したいなぁと `git init` してから5年以上経っても未だに動く実装を書けてないけど、現代（＝2026年）の Mastodon などと疎通するのに必要なプロトコルやらなんやらが ActivityPub の W3C 勧告だけでは全然足りないのでまとめておく。

<!--more-->

API は client to server を利用する想定のため、実装固有のクライアントAPI は無視する。

## ActivityPub コア仕様

まず読まなければならないもの。エラッタは気にした方が良い。例えば JSON-LD で `@id` には `null` が許容されないのだが、勧告の _3.1 Object Identifiers_ では `null` を使うよう指示されている箇所がある。エラッタでは当然これを否定していて勧告後の編集者草案ではこの文言は削除されている。

- ActivityPub
  - [W3C 勧告][ap]
    - [編集者草案][ap-ed]
  - [エラッタ][ap-eratta]
  - [勧告との比較][ap-ed-diff]
- Activity Streams 2.0, Activity Vocabulary
  - AS [W3C 勧告][as-2.0]
    - [編集者草案][ap-ed]
  - AS vocab [W3C 勧告][as-vocab]
    - [編集者草案][as-vocab-ed]
  - [エラッタ][as-eratta]
  - [勧告との比較][as-ed-diff]
  - [ActivityStreams 2.0 Terms][as-terms]
    - JSON-LD コンテキストに含まれる用語集。
- [JSON-LD 1.0][json-ld-1.0]
  - Activity Streams の文書は JSON-LD 1.0 で処理できる必要がある。
  - 実装が JSON-LD を処理する必要は無いが、素の語彙だけでやり取りできる実装はほとんどなく拡張語彙が多く使われるのであった方が扱いやすい。
  - [JSON-LD 1.1 Processing Algorithms and API][json-ld-api-1.1], [JSON-LD 1.0 Processing Algorithms and API][json-ld-api-1.0]
    - 現代では JSON-LD 1.0 をそのまま実装したプロセッサーより JSON-LD 1.1 に準拠したもので `processingMode` に `json-ld-1.0` を渡すのが良さそう。

[ap]: https://www.w3.org/TR/activitypub/
[ap-ed]: https://w3c.github.io/activitypub/
[ap-eratta]: https://www.w3.org/wiki/ActivityPub_errata
[ap-ed-diff]: https://github.com/w3c/activitypub/compare/2083f4629951e9508ea829635eaf90fcfee9b483...HEAD
[as-2.0]: https://www.w3.org/TR/activitystreams-core/
[as-ed]: https://w3c.github.io/activitystreams/core/
[as-vocab]: https://www.w3.org/TR/activitystreams-vocabulary/
[as-vocab-ed]: https://w3c.github.io/activitystreams/vocabulary/
[as-eratta]: https://w3c.github.io/activitystreams/ERRATA.html
[as-ed-diff]: https://github.com/w3c/activitystreams/compare/fa11a171ffa40107b4dcf38d2e891c4261c0dea8...HEAD
[as-terms]: https://www.w3.org/ns/activitystreams
[json-ld-1.0]: https://www.w3.org/TR/json-ld1/
[json-ld-api-1.0]: https://www.w3.org/TR/json-ld-api1/
[json-ld-api-1.1]: https://www.w3.org/TR/json-ld11-api/


## ActivityPub 拡張仕様

実装による独自の解釈や SocialCG による追加の仕様などがいくつか文書としてまとまっている。

### SWICG

SocialCG が主導となっているもの

- [Fediverse Enhancement Proposals][fep]
  - SocialCG によるコミュニティが中心となって、素の ActivityPub では足りない或いは曖昧な表現の解釈を検討しているもの。
  - Mastodon で遂に実装された引用と以前から Misskey, Pleroma, Fedibird などで実装されてきた引用の仕様をまとめた FEP-044f などがある。
- [ActivityPub Miscellaneous Terms][miscellany]
  - Mastodon が AS 名前空間に勝手に増やした語彙を SocialCG がドキュメントにしたもの。
- [ActivityPub and WebFinger][webfinger]
  - `acct:username@domain` から逆引きするのに必要になる。
  - Mastodon がリモートフォローに利用している OStatus Subscribe なども WebFinger からリンクが提供されている。
- [ActivityPub and HTTP Signatures][http-signature]
  - Activity の配送に署名をつけて真正性を保証するもの。
  - Mastodon では v4.3 までドラフト時の仕様を利用し続けており `hs2019` が必要だった。
    - v4.4.0 からは [RFC 9421][rfc9421] に準拠したものをサポートするようになった。
- [ActivityPub Discovery][html-discovery]
  - Activity Streams 文書と HTML 文書を両方提供する際の指針。
- [Data Portability in ActivityPub][data-portability]
  - `Move` を用いたアカウントの引っ越しや、サーバー実装を移行する際に保持しなければならないデータの種類など。
  - すでに Mastodon などの既存実装を動かしていて、同一のドメインに新規実装を持ってきたいときに軽く確認すると良いだろう。
- [Messaging Layer Security in ActivityPub][mls]
  - E2EE に関する仕様。
  - <https://purl.archive.org/socialweb/mls> の代わりに <https://swicg.github.io/activitypub-e2ee/context/0.2.0.jsonld> を指定すれば JSON-LD プロセッサーも解釈できる。

[fep]: https://fediverse.codeberg.page/fep/
[miscellany]: https://swicg.github.io/miscellany/
[webfinger]: https://swicg.github.io/activitypub-webfinger/
[http-signature]: https://swicg.github.io/activitypub-http-signature/
[rfc9421]: https://www.rfc-editor.org/rfc/rfc9421.html
[html-discovery]: https://swicg.github.io/activitypub-html-discovery/
[data-portability]: https://swicg.github.io/activitypub-data-portability/
[mls]: https://swicg.github.io/activitypub-e2ee/mls.html


### 特殊用途向け拡張

- [ForgeFed][forgefed]
  - Forgejo などが実装している、Git などの VCS を利用したプロジェクトホスティングや共同開発のやり取りを非中央集権で扱うための仕様。

[forgefed]: https://forgefed.org/spec/


### 実装固有の拡張

- [Mastodon による AS 語彙拡張][mstdn-ext]
  - 2026-06-11 時点では `Block`, `Question` を勧告とは異なる目的や型として利用しており、`Mention` についても勧告以上に意味を持たせている。
- [GoToSocial による AP 実装][gts-fed]
  - _Interaction Policy_ などの独自拡張や Mastodon のような `Flag` の利用など。
- [Pleroma による AP 拡張][pl-ap]
  - 1対1のチャットや C2S に利用する想定のプロパティに使われる語彙。文書になっていないが絵文字リアクションのための独自語彙などもある。
  - [LitePub][litepub] の名前空間を利用している。
    - ActivityPub を拡張した上位互換プロトコルとして作ろうとしていた形跡があるが現在はまともに管理されておらず、Pleroma 独自の連合機能に利用されるのみ。

[mstdn-ext]: https://docs.joinmastodon.org/spec/activitypub/#extensions-defined-using-activitystreams-vocabulary
[gts-fed]: https://docs.gotosocial.org/en/v0.19.1/federation/
[pl-ap]: https://docs.pleroma.social/backend/development/ap_extensions/
[litepub]: https://litepub.social/


## その他プロトコル

- [NodeInfo][nodeinfo]
  - サーバー実装のメタデータの公開方法。
  - [diaspora*][diaspora] から生まれた。

[nodeinfo]: https://nodeinfo.diaspora.software/
[diaspora]: https://diasporafoundation.org/
