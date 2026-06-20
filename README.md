# LLMで3Dデザイン → STL出力 ハンズオン

ブラウザのLLM（ChatGPT / Claude など）に日本語で指示して **OpenSCAD** のコードを書いてもらい、ブラウザ上でそのまま **STLファイル**（3Dプリント用データ）を作るハンズオンです。

ソフトのインストールは不要。ブラウザだけで完結します。エンジニアでなくても大丈夫です。

---

## このハンズオンでやること

1. ブラウザのLLMに「こういう形を作って」と日本語でお願いする
2. LLMが**OpenSCADのコード**（形を表す文章のようなもの）を返す
3. そのコードを**ブラウザ版OpenSCAD**に貼り付けると、立体が表示される
4. ボタンひとつで**STLファイル**を書き出す（3Dプリンタで印刷できるデータ）

```
[あなたの言葉] → [LLM] → [OpenSCADコード] → [ブラウザ版OpenSCAD] → [STL]
```

---

## 必要なもの

- インターネットにつながったPCとブラウザ（Chrome / Edge / Safari など）
- ブラウザで使えるLLM（ChatGPT、Claude、Gemini、社内LLM など、どれでも可）
- ブラウザ版OpenSCAD（インストール不要・無料）
  - **https://ochafik.com/openscad/**

---

## 所要時間（60分の目安）

| 時間 | 内容 |
|------|------|
| 0–10分 | はじめに・ツールを開く・デモを見る（[01_setup_web_guide](docs/01_setup_web_guide.md)） |
| 10–20分 | 例題1・2をみんなで（箱 → ネームプレート） |
| 20–45分 | 例題3〜7を自分のペースで（コースター・ペン立て・キーホルダー など） |
| 45–55分 | 自由制作（作りたいものをLLMに頼んでみる） |
| 55–60分 | STL書き出し・ふりかえり |

---

## 資料の使い方

| ファイル | 内容 |
|----------|------|
| [docs/01_setup_web_guide.md](docs/01_setup_web_guide.md) | **まず読む。** ブラウザ版OpenSCADの開き方・操作・STL書き出し手順 |
| [docs/02_prompt_templates.md](docs/02_prompt_templates.md) | LLMへの**お願いの仕方（コピペ用テンプレ）** |
| [docs/03_examples.md](docs/03_examples.md) | **段階別の例題集**（コード付き・全部動作確認済み） |
| [docs/04_troubleshooting.md](docs/04_troubleshooting.md) | **困ったとき**の対処・よくあるエラー |
| [examples/](examples/) | 例題のOpenSCADコード（`.scad`） |
| [stl/](stl/) | 例題を書き出したSTLの見本 |

---

## いちばん大事なコツ（先に1つだけ）

LLMには「**OpenSCADのコードだけ**を書いて」と必ず添えてください。
そうしないと、説明文の中にコードが埋もれて貼り付けにくくなります。テンプレは [02_prompt_templates](docs/02_prompt_templates.md) にあります。

---

OpenSCADは [The OpenSCAD project](https://openscad.org/) によるオープンソースソフトウェアです（GPL）。本資料はハンズオン用の補助教材です。
