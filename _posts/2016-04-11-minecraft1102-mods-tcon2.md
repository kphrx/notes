---
category: Game
tags: Minecraft
eye_catch: https://i.imgur.com/9LZ8GX9.png
date: '2016-04-11 00:00:01 +0900'
redirect_from:
  - /game/minecraft1102-mods-tcon2
  - /games/minecraft/minecraft1102-mods-tcon2
  - /minecraft/minecraft1102-mods-tcon2
---

# Minecraft\[1.10.2]\[Mods] Tinkers Construct 2紹介

マインクラフト1.10.2のforgeでいくつかModを入れて遊ぼうと考えた時にツール系のModとして愛用していたTinkers Construct(TCon)がv2になり少し(?)変わったそうなのでまとめました

<!--more-->

他の人がまとめたりしてますがいまいちよくわからないのでv１時代のことが書かれてある[日本語Wiki](https://www26.atwiki.jp/minecraft/pages/1125.html)を参考に自分もまとめちゃおうって思いつきなので完全に自分のためです。見づらければ申し訳ないです


## ダウンロード先
- Tenkers’ Construct: <https://minecraft.curseforge.com/projects/tinkers-construct/files>
- 前提Mods
  - Minecraft Forge: <http://files.minecraftforge.net/maven/net/minecraftforge/forge/index_1.10.2.html>
    - TConのバージョンが2.3.3aの場合: 執筆時Recomended(安定板)の2011で動きます
    - TConのバージョンが2.4.0の場合: 2024以上が要求されます
  - Mantle: <https://minecraft.curseforge.com/projects/mantle/files>
    - TConのバージョンが2.3.3aの場合: 0.10.3以上
    - TConのバージョンが2.4.0の場合: 0.10.4以上

## 機能紹介

### 設置物

#### 加工台
前バージョンからあった、Crafting Station、Part Builder、Stencil Table、Tool Station、Tool Forge、Pattern Chestに加えてPart Chestが追加されています  
このPart Chest、かなり多く入るみたいでラージチェスト一つ分を難なく収納してくれました。しかも破壊しても収納されたままです。すごい

レシピはBlank Pattern１つ、バニラのチェスト１つ、木の棒２つ、木材１つです  
![Recipe 1](/assets/images/minecraft/minecraft1102-mods-tcon2/recipe-1.png)

また全てのテーブルとチェストを隣接させるとGUIに他のテーブルが表示されそこから使うことができるようになっていますので以前より視点移動もなく割と手間がないのではないかなと感じました  
なお、Pattern Chestに直接隣接させないと画像のようにChestの内部が表示されないので注意。あとStencil Tableを隣接させた時にもChestが表示されるの地味に便利。バージョン１時代にはなかった機能です  
![GUI 1](/assets/images/minecraft/minecraft1102-mods-tcon2/gui-1.png)

だだしPattern ChestにCast(鋳型)を入れられなくなってましたので乾式精錬炉が完成すると通常のチェストの方を圧迫していくのではないかなと感じました。(他のバージョン(2.0〜2.3.3a)でもなるのかな？)  
それからPatternはスタックできるようになったようですがPattern Chestには一種類一つしか入りませんので捨てない限りはインベントリを圧迫するゴミとなってしまいます。Part Chestはスタックしたままでも入りますがこちらも１スロットにしか入らないので一種類の上限は 64 になります。ここは気をつけないとダメかもしれません

またTool Station/ForgeのGUIが変更されています  
![GUI 2](/assets/images/minecraft/minecraft1102-mods-tcon2/gui-2.png)

それからCrafting Stationにてツールの修理ができなくなっている模様です。これは地味に嫌な変更かもしれないです…探索してる最中に壊れたら修理するというのはもちろんなのですが、行った先で 3×3 のクラフトをするのにこれ一つで済んでいたものがTool Stationの分までインベントリを使うというのはなかなかいただけないです  
もしこのバージョンのみで起きてることなら修正を待ちたいところですね

#### 乾式精錬炉
乾式精錬炉も少し仕様が変わってるみたいです。以前は最大でも 7×7 の広さまでしか拡張できなかったのが今はそれ以上。限界はあるのかもしれませんがかなり広げられるようになっており1段目だけで 1スタック以上を溶かすことができます  
さらにSmeltely Drainも以前は一方向だったのが上下四方全面から取り出すことができるようになっています。~~これは捗ります~~1.7.10の環境で何気なしに横向きのDrainに上から流し込んだら入りました…テクスチャが変わっただけか…まぁ分かりやすくなったからよしということで  
それから乾式精錬炉の構成ブロックの焼成タンク/ガラス/ウィンドウのうちガラスがGaugeとなりガラスの方は単純に中身を見るための透過ブロックになっています  
ガラスのレシピはこちら  
![Recipe 2](/assets/images/minecraft/minecraft1102-mods-tcon2/recipe-2.png)

あと焼成石、Seared Stoneをそのままクラフトし続けることで焼成レンガ(Seared Bricks)になります。以前はChisel(のみ)が必要だったのですが…なんでしょうか？

それから鋳型ですが以前のAluminum Brass(青銅)はTCon単体での追加鉱石が削除されているようですからなくなっています。TCon2からは鋳型は金から作るようになっていますが、金は希少ですし他のModで需要が上がる可能性もあります。安定して手に入るまでは作るのが難しいかもしれません。ですがそれの救済処置なのか粘土製の鋳型を作成できるようになっています。これは乾式精錬炉に粘土２つで１枚分、粘土ブロック１つで２枚分の液体粘土ができます。また水をバケツ1/2杯分と丸石2つ、土を2つ乾式精錬炉に入れて合成することで１枚分の鋳型ができます。この粘土鋳型は使い捨てになりますが、序盤の金が足りない間はお世話になるのではないでしょうか？  
この記事を作成している段階ではこれとNEI、Wailaだけを入れている環境で調べてますので追加鉱石がありませんが他のModの追加鉱石にForge鉱石辞書のアルミニウムと銅が存在していれば青銅がNEIに出現するかもと勝手に期待しております  

### 素材の性能
TConの素材のそれぞれの数値になります  
他のModによる追加鉱石の情報は現在私にはないのでTCon単体での性能になります  
採掘レベルは0(石)、1(鉄)、2(ダ)、3(黒)、4(コ)の五段階。以前まであった５(マニュリン)の硬度はなくなっているようです  

\* 私は普段、英語環境でプレイしていますので日本語名が違う可能性があるのと他の場所と違う書き方になっている可能性があります。それらは皆様の方で脳内変換していただければ幸いです

#### Part Builderで加工できる素材
\*(アスタリスク)がついてるものは乾式精錬炉でも作ることが可能です

<details open markdown="1">
  <summary>Head(ツールヘッド)</summary>

| 素材 | 耐久値 | 採掘レベル | 採掘速度 | 攻撃力 | 特性 |
| :--: | -----: | :--------: | -------: | -----: | :--: |
|Wood<br>木材|35|0(石)|2|2|Ecological|
|Stone<br>丸石|120|1(鉄)|4|2.9|Cheapskate|
|Flint<br>火打石|150|1(鉄)|5|2.8|Crude Ⅱ|
|Cactus<br>サボテン|210|1(鉄)|4|3.4|Prickly|
|Bone<br>骨|200|1(鉄)|5.09|2.5|Splintering|
|*Obsidian<br>黒曜石|139|4(コ)|7.07|4.2|Duritae|
|Prismarine<br>プリズマリン|430|1(鉄)|5.5|6|Jagged|
|End<br>エンドストーン|420|3(黒)|3.23|3.23|Alien|
|Paper<br>紙|12|0(石)|0.51|0.05|Writable Ⅱ|
|Sponge<br>スポンジ|550|0(石)|3.02|0|Squeaky|
|Firewood<br>ファイヤーウッド|550|0(石)|6|5.5|Autosmelt|
|*Knightslime<br>ナイトスライム インゴット|850|3(黒)|5.8|5.1|Crumbling|
|Slime<br>緑スライムクリスタル|1000|0(石)|4.24|1.8|Slimey|
|Blue Slime<br>青スライムクリスタル|780|0(石)|4.03|1.8|Slimey|
|Magma Slime<br>マグマスライムクリスタル|300|0(石)|2.1|7|Superheat|
|Netherrack<br>ネザーラック|270|1(鉄)|4.5|3|Ardiculous|

</details>

<details markdown="1">
  <summary>Handle(ハンドル/持ち手)</summary>

| 素材 | 耐久値 | 補正値 | 特性 |
| :--: | -----: | -----: | :--: |
|Wood<br>木材|25|1|Splinters<br>Ecological|
|Stone<br>丸石|-50|0.5|Cheap|
|Flint<br>火打石|-60|0.6|Crude|
|Cactus<br>サボテン|20|0.85|Spiky|
|Bone<br>骨|50|1.1|Fractured|
|*Obsidian<br>黒曜石|-100|0.9|Duritae|
|Prismarine<br>プリズマリン|-150|0.6|Aquadynamic|
|End<br>エンドストーン|0|0.85|Enderference|
|Paper<br>紙|5|0.1|Writable|
|Sponge<br>スポンジ|250|1.2|Squeaky|
|Firewood<br>ファイヤーウッド|-200|1|Autosmelt|
|*Knightslime<br>ナイトスライム インゴット|500|0.5|Unnatural|
|Slime<br>緑スライムクリスタル|-100|0.7|Slimey|
|Blue Slime<br>青スライムクリスタル|-100|1.3|Slimey|
|Magma Slime<br>マグマスライムクリスタル|-200|0.85|Flammable|
|Netherrack<br>ネザーラック|-150|0.85|Hellish|

</details>

<details markdown="1">
  <summary>Extra(締め具/その他)</summary>

| 素材 | 耐久値 | 特性 |
| :--: | -----: | :--: |
|Wood<br>木材|15|Splinters<br>Ecological|
|Stone<br>丸石|20|Cheap|
|Flint<br>火打石|40|Crude|
|Cactus<br>サボテン|50|Spiky|
|Bone<br>骨|65|Fractured|
|*Obsidian<br>黒曜石|90|Duritae|
|Prismarine<br>プリズマリン|100|Aquadynamic|
|End<br>エンドストーン|42|Enderference|
|Paper<br>紙|15|Writable|
|Sponge<br>スポンジ|250|Squeaky|
|Firewood<br>ファイヤーウッド|150|Autosmelt|
|*Knightslime<br>ナイトスライム インゴット|125|Unnatural|
|Slime<br>緑スライムクリスタル|350|Slimey|
|Blue Slime<br>青スライムクリスタル|200|Slimey|
|Magma Slime<br>マグマスライムクリスタル|150|Flammable|
|Netherrack<br>ネザーラック|75|Hellish|

</details>

#### 乾式精錬炉が必要な素材
<details open markdown="1">
  <summary>Head(ツールヘッド)</summary>

| 素材 | 耐久値 | 採掘レベル | 採掘速度 | 攻撃力 | 特性 |
| :--: | -----: | :--------: | -------: | -----: | :--: |
|Iron<br>鉄|204|2(ダ)|6|4|Magnetic Ⅱ|
|Pig Iron<br>豚鉄|380|3(黒)|6.2|4.5|Baconlitious<br>Tasty|
|Cobalt<br>コバルト|780|4(コ)|12|4.1|Momentum|
|Ardite<br>アーダイト|990|4(コ)|3.6|3.6|Stonebound|
|Manyullyn<br>マニュリン|820|4(コ)|7.02|8.72|Insatiable|

</details>

<details markdown="1">
  <summary>Handle(ハンドル/持ち手)</summary>

| 素材 | 耐久値 | 補正値 | 特性 |
| :--: | -----: | -----: | :--: |
|Iron<br>鉄|60|0.85|Magnetic|
|Pig Iron<br>豚鉄|-100|1.2|Tasty|
|Cobalt<br>コバルト|100|0.9|Lightweight|
|Ardite<br>アーダイト|-200|1.4|Petramor|
|Manyullyn<br>マニュリン|250|0.5|Cold-Blooded|

</details>

<details markdown="1">
  <summary>Extra(締め具/その他)</summary>

| 素材 | 耐久値 | 特性 |
| :--: | -----: | :--: |
|Iron<br>鉄|50|Magnetic|
|Pig Iron<br>豚鉄|170|Tasty|
|Cobalt<br>コバルト|300|Lightweight|
|Ardite<br>アーダイト|450|Petramor|
|Manyullyn<br>マニュリン|50|Cold-Blooded|

</details>

#### 特性について
素材ごとに特性がありますが、旧バージョンとかなり変わってますので機能についての説明を少し  
和名はGoogle翻訳から私が勝手な意訳をしてます

<dl>
  <dt>Ecological</dt>
  <dt>再生</dt>
    <dd>ツールの耐久値を回復する</dd>
</dl>
<dl>
  <dt>Splinters</dt>
  <dt>ささくれ</dt>
    <dd>一定に確率でダメージを受ける</dd>
</dl>
<dl>
  <dt>Cheapskate</dt>
  <dt>みすぼらしい</dt>
    <dd>ツールの耐久値を減少させる</dd>
</dl>
<dl>
  <dt>Cheap</dt>
  <dt>手軽</dt>
    <dd>修理時に回復する耐久値の上昇?</dd>
</dl>
<dl>
  <dt>Crude</dt>
  <dt>粗悪</dt>
    <dd>装備を身につけていない敵に対してダメージ増加</dd>
</dl>
<dl>
  <dt>Prickly</dt>
  <dt>棘</dt>
    <dd>ダメージ増加?</dd>
</dl>
<dl>
  <dt>Spiky</dt>
  <dt>スパイク</dt>
    <dd>カウンターを防ぐ?</dd>
</dl>
<dl>
  <dt>Splintering</dt>
  <dt>分裂</dt>
    <dd>ダメージ増加?</dd>
</dl>
<dl>
  <dt>Fractured</dt>
  <dt>へし折る</dt>
    <dd>ダメージ増加? or 耐久減少増加?</dd>
</dl>
<dl>
  <dt>Duritae</dt>
  <dt>硬度</dt>
    <dd>耐久値上昇?</dd>
</dl>
<dl>
  <dt>Jagged</dt>
  <dt>鋸歯</dt>
    <dd>耐久値が減る代わりにダメージ増加?旧バージョンの仕様と同じ?</dd>
</dl>
<dl>
  <dt>Aquadynamic</dt>
  <dt>水の力</dt>
    <dd>水中の使用でも遅くならない？ and 雨が降っている時に効果増加?</dd>
</dl>
<dl>
  <dt>Alien</dt>
  <dt>エイリアン</dt>
    <dd>???</dd>
</dl>
<dl>
  <dt>Enderference</dt>
  <dt>エンダーファレンス</dt>
    <dd>エンダーマンのテレポートを一時的に防ぐ?</dd>
</dl>
<dl>
  <dt>Writable</dt>
  <dt>余白</dt>
    <dd>改造スロットを追加。最大で５まで増加</dd>
</dl>
<dl>
  <dt>Squeaky</dt>
  <dt>柔軟</dt>
    <dd>シルクタッチのエンチャントがつく。代わりに攻撃力はゼロになる</dd>
</dl>
<dl>
  <dt>Autosmelt</dt>
  <dt>自動精錬</dt>
    <dd>採掘したブロックを精錬した状態で手に入れる</dd>
</dl>
<dl>
  <dt>Crumbling</dt>
  <dt>ボロボロ</dt>
    <dd>-</dd>
</dl>
<dl>
  <dt>Unnatural</dt>
  <dt>不自然</dt>
    <dd>適正ツールでなくても採掘、回収可能なツールは採掘速度が</dd>
</dl>
<dl>
  <dt>Slimey</dt>
  <dt>スライミー</dt>
    <dd>-</dd>
</dl>
<dl>
  <dt>Superheat</dt>
  <dt>加熱</dt>
    <dd>-</dd>
</dl>
<dl>
  <dt>Flammable</dt>
  <dt>可燃性</dt>
    <dd>-</dd>
</dl>
<dl>
  <dt>Ardiculous</dt>
  <dt>馬鹿げた</dt>
    <dd>ネザーで性能上昇?</dd>
</dl>
<dl>
  <dt>Hellish</dt>
  <dt>地獄</dt>
    <dd>ネザー以外のモブへのダメージ増加</dd>
</dl>
<dl>
  <dt>Magnetic</dt>
  <dt>マグネット</dt>
    <dd>ブロック破壊で周りの鉱石を引き寄せる?</dd>
</dl>
<dl>
  <dt>Baconlicious</dt>
  <dt>魅力的なベーコン?</dt>
    <dd>使用時にベーコンをドロップ</dd>
</dl>
<dl>
  <dt>Tasty</dt>
  <dt>美味</dt>
    <dd>満腹度が3以下?になると耐久値を消費して1〜2回復。手に持っていることが条件?</dd>
</dl>
<dl>
  <dt>Momentum</dt>
  <dt>勢い</dt>
    <dd>連続して採掘していると採掘速度が速くなる</dd>
</dl>
<dl>
  <dt>Lightweight</dt>
  <dt>軽量</dt>
    <dd>全体的に速くなる。ツールを振った後の回復の速度?</dd>
</dl>
<dl>
  <dt>Stonebound</dt>
  <dt>石縛り</dt>
    <dd>採掘速度が早くなる代わりに攻撃力が低くなる。旧バージョンと同じ</dd>
</dl>
<dl>
  <dt>Petramor</dt>
  <dt>石工</dt>
    <dd>つるはしが適正ツールのブロックを破壊する時に耐久値が減りにくい?</dd>
</dl>
<dl>
  <dt>Insatiable</dt>
  <dt>貪欲</dt>
    <dd>ダメージ量が増加し、耐久値の消費も速くなる。</dd>
</dl>
<dl>
  <dt>Cold-Blooded</dt>
  <dt>冷血</dt>
    <dd>あいての体力が最大?のときにダメージが増加?</dd>
</dl>

### 装備の改造
こちらも旧バージョンと素材や機能に違いがあるものがあります

| 名前 | 素材 | 効果 |
| :--: | :--: | :--- |
|Haste<br>加速|レッドストーンダスト (ブロックも可)|攻撃速度の上昇と採掘速度の上昇<br>改造スロット１つにつき50まで累積。レッドストーンダスト１つにつき 約+0.12。50まで累積した時のボーナススピード(1.10からの攻撃スピード?)は+20%<br>複数スロットを使って効果を上げることができる|
|Luck<br>運|ラピスラズリ (ブロックも可)|バニラと同等の幸運かドロップ増加をつける<br>３段階あり、LuckⅠは 60、LuckⅡは 180、LuckⅢは 360 の累積値が最大<br>スロットは１つしか使わない。Silktouchとは併用できない。Blastingとは併用できない|
|Sharp<br>鋭さ|ネザークォーツ (ブロックも可)|攻撃力の上昇<br>改造スロット１つにつき72まで累積。ネザークォーツ１つにつき 約0.04<br>複数スロットを使って効果を上げることができる|
|Diamond<br>ダイヤモンド|ダイヤモンド|耐久値に+500。採掘レベルを１段階上昇させる。最高で 3(黒) まで。採掘速度に+0.5。攻撃力に+1<br>一度しか追加できない|
|Emerald<br>エメラルド|エメラルド|耐久値に+(初期値の)50%。採掘レベルを１段階上昇させる。最高で 2(ダ) まで(プレイ開始時にもらえる本の記述と違うためバグの可能性あり)<br>一度しか追加できない|
|Fortified<br>強化|Sharpening Kit<br>火打石|Sharpening Kitの素材の採掘レベルに上げることができる<br>ツールの採掘レベルが素材より高くても素材の採掘レベルに上書きされるので注意<br>改造スロットは使用しない|
|Silktouch<br>シルクタッチ|シルキージュエル|バニラと同等のシルクタッチの効果をつける<br>攻撃力を-3。ただし2未満にはならない<br>一度しか追加できない。Luckとの併用はできない。Blastingとは併用できない。Fierwoodツールには使えない|
|Reinforced<br>増強|Reinforcement|一定確率で耐久値を消費しなくなる<br>１段階につき耐久値を消費しない確率を +20%<br>複数スロットを使って効果を上げることができる|
|Beheading<br>刎頚|エンダーパール<br>黒曜石|Mobの頭を落としやすくする<br>確率は不明<br>複数スロットを使って効果を上げることができる|
|Smite<br>アンデッド特攻|Consecrated Soil|アンデッドの敵への攻撃力増加<br>複数スロットを使って効果を上げることができる|
|Bane of Arthropods<br>クモ特攻|発酵した蜘蛛の目|クモや紙魚への攻撃力増加(Modで追加される虫系のmodへも効果あり?)<br>複数スロットを使って効果を上げることができる|
|Fiery<br>火|ブレイズパウダー|攻撃した敵を燃やす<br>改造スロット１つにつき25まで累積。ブレイズパウダー１つにつき 攻撃力+0.07。８つおきに燃える時間が１秒ずつ伸びる。最初の７つまでは１秒<br>複数スロットを使って効果を上げることができる|
|Necrotic<br>屍|Necrotic Bone|ダメージを与えた時に回復<br>１段階につき与えたダメージから回復する量+10%<br>複数スロットを使って効果を上げることができる|
|Knockback<br>ノックバック|ピストン<br>or<br>粘着ピストン|改造スロット１つにつき10まで累積<br>複数スロットを使って効果を上げることができる|
|Soulbound<br>ソウルバウンド|ネザースター|死亡時にアイテムを所持したまま復活できる。当然ハードコアでは意味がない<br>一度しか追加できない。改造スロットは使用しない|
|Height++<br>縦幅++|Expander (Vertical)|縦のブロック破壊範囲を広げる<br>ツルハシなどは上下どちらかに１つ、槌やまさかりなどだと上下両方に１つずつ範囲が広がる。Width++と併用するとツルハシなどは 2×2、槌などは四隅が残る 5×5 になる<br>一度しか追加できない(プレイ開始時にもらえる本の記述と違うためバグの可能性あり)。武器には使えない|
|Width++<br>横幅++|Expander (Horizontal)|横のブロック破壊範囲を広げる<br>ツルハシなどは左右どちらかに１つ、槌やまさかりなどだと左右両方に１つずつ範囲が広がる。Height++と併用するとツルハシなどは 2×2、槌などは四隅が残る 5×5 になる<br>一度しか追加できない(プレイ開始時にもらえる本の記述と違うためバグの可能性あり)。武器には使えない|
|Mending Moss<br>自動修復|Mending Moss|経験値を消費して自動回復<br>回復量はレベルによって上がる。手持ちもしくはプレイヤーのインベントリ内に入れておく必要がある<br>複数スロットを使って効果を上げることができる|
|Blasting<br>爆破|TNT x3|破壊速度アップ?<br>３段階まで強化できる<br>スロットは１つしか使わない。Silktouchとは併用できない。Luckとは併用できない。Firewoodツールには使えない|
|Growing<br>グロウィング|グロウストーンダスト x2<br>エンダーアイ|手に持っていると暗いところにGrowball(光源)を設置<br>一度しか追加できない|
|Shulking<br>シュルク|焼いたコーラスフルーツ|攻撃した相手に浮遊のステータス効果を与える<br>50まで累積。焼いたコーラスフルーツ２つにつき持続時間 +0.05s。初期値は 0.5s で最大で 1.75s まで増加<br>スロットは１つまでしか使えない|
|Webbed<br>蜘蛛の巣|蜘蛛の巣|攻撃した相手に移動速度低下のステータス効果を与える<br>複数スロットを使って効果を上げることができる|
