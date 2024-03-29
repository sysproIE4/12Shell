# シェル（myshell）の改良２


簡易シェル（`myshell`）にリダイレクト機能を追加しなさい．<br>
また，動作確認をしなさい．

## 改造

1. リダイレクト機能<br>
  文法：`... > ファイル名 ...` （出力リダイレクト）<br>
  　　　`... < ファイル名 ...` （入力リダイレクト）<br>
  説明：入力行のどの位置でもよいので`>`，`<`で指示できる．<br>
  　　　（`>`，`<` の前後には空白が必要である．）<br>
  　　　リダイレクト機能が使用できるのは外部コマンドだけとする．<br>
  すでに`ファイル`が存在する場合は内容を上書きする．<br>
  使用例：`Command: ls > a.txt` <br>
  使用例：`Command: grep .txt < a.txt`<br>

2. プログラムの作成<br>
  レポジトリをクローンし`myshell.c`を編集してプログラムを完成する．<br>
  上の仕様を満たすプログラムを美しくコーディングする．<br>
  できたと思ったら十分な動作テストを行う．

3. 動作テスト<br>
  ファイルを作成して出力が書き込めるか．<br>
  既にあるファイルに出力が上書きできるか．<br>
  ファイルから入力できるか確認する．<br>
  文法的におかしなことをした場合を確認する．<br>
  その他，何が必要か考えて行う．

## コンパイル方法

```Makefile```を準備してあるので
```make```コマンドでコンパイルできる．

```bash
$ make
cc -D_GNU_SOURCE -Wall -std=c99 -o myshell myshell.c
```
