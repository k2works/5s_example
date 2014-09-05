5S解説サンプルプログラム
===
# 目的
5Sの概念をRubyプログラムで解説
# 前提
| ソフトウェア     | バージョン    | 備考         |
|:---------------|:-------------|:------------|
| OS X           |10.8.5        |             |
| Ruby      　　　|2.1.1        |             |

# 構成
+ [セットアップ](#1)
+ [整理](#2)
+ [整頓](#3)
+ [清掃](#4)
+ [清潔](#5)
+ [躾](#6)

# 詳細
## <a name="1">セットアップ</a>
```
$ bundle install
$ guard start
$ rspec --init
$ piccolo execute FiveS_sample five_s_sample method01 method02 method03 method04 method05 -p
```
自動生成された_Guardfile_を一部編集
```ruby
guard :rspec, cmd: "bundle exec rspec" do
  ・・・
```
テストケースが通るようにする
```bash
$ rspec
.....

Finished in 0.0019 seconds (files took 0.09903 seconds to load)
5 examples, 0 failures
```
## <a name="2">整理</a>
## <a name="3">整頓</a>
## <a name="4">清掃</a>
## <a name="5">清潔</a>
## <a name="6">躾</a>

# 参照

+ [Ruby | Guard gem を利用してファイルの変更を検出し、任意のタスクを自動実行する](http://qiita.com/tbpgr/items/f5be21d8e19dd852d9b7)
+ [RSpecPiccolo](https://github.com/tbpgr/rspec_piccolo)
