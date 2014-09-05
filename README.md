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
_lib/five_s_sample.rb_整理前
```ruby
# encoding: utf-8

=begin
　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　やつを追う前に言っておくッ！
　　　　　　　　　　　　　　　　　　　　　　おれは今やつのスタンドをほんのちょっぴりだが体験した
　　　　　　　　　　　　　　　　　　い…いや…体験したというよりはまったく理解を超えていたのだが……
　　　　　　　　 ,. -‐'''''""¨¨¨ヽ
　　　　 　 　 (.＿＿_,,,... -ｧァﾌ|　　　　　　　　 　あ…ありのまま 今　起こった事を話すぜ！
　 　 　 　 　 |i i|　 　 }!　}} /／|
　　　　 　 　 |l､{　 　j}　/,,ｨ//｜　　　　　　　『おれは奴の前で階段を登っていたと
　　　　　　　 i|:!ヾ､_ﾉ／ u {:}//ﾍ　　　　　　　　　　　　　　思ったらいつのまにか降りていた』
　　　　　　　 |ﾘ u' }　 ,ﾉ　_,!V,ﾊ |
　　 　 　 ／´fト､_{ﾙ{,ィ'ｅﾗ　, ﾀ人　　　　　　な…　何を言ってるのか　わからねーと思うが
　　　　 /' 　 ヾ|宀| {´,)⌒`/ |<ヽﾄiゝ　　　　　　 おれも何をされたのかわからなかった…
　　　　,ﾞ　 ／ )ヽ iLﾚ 　u' |　| ヾｌﾄﾊ〉
　　 　 |／_／　 ﾊ !ニ⊇　'／:} 　V:::::ヽ　　　　　　　　頭がどうにかなりそうだった…
　　　 /／ 二二二7'T'' ／u'　__ /:::::::/｀ヽ
　　　/'´r　-―一ｧ‐ﾞＴ´　'"´ ／::::／-‐ 　＼　　　　 催眠術だとか超スピードだとか
　　 / // 　 广¨´ 　/'　　 ／:::::／´￣｀ヽ ⌒ヽ　 そんなチャチなもんじゃあ　断じてねえ
　　ﾉ ' /　 ノ:::::`ー-､___／:::::／/ 　 　 　 ヽ　　}
_／｀丶　/::::::::::::::::::::::::::￣`ー-{:::...　　　 　　　ｲ  もっと恐ろしいものの片鱗を味わったぜ…
=end

class FiveS_sample
  def method01
    "10"
  end

  def method02(arg)
    "10"
  end

  def method03
    "1"
  end

  def method04(arg)
    "10"
  end

  def method05
    "うんこ"
  end
end
```
_lib/five_s_sample.rb_整理後
```ruby
# encoding: utf-8

class FiveS_sample
  def method01
    "10"
  end

  def method02(arg)
    "10"
  end

  def method03
    "1"
  end

  def method04(arg)
    "10"
  end
end
```
テストケース整理前
```bash
Failures:

  1) FiveS_sample method05 |case_no=1|case_title=うんこ
     Failure/Error: actual = five_s_sample.method05
     NoMethodError:
       undefined method `method05' for #<FiveS_sample:0x00000101bc35e8>
     # ./spec/five_s_sample_spec.rb:173:in `block (4 levels) in <top (required)>'

Finished in 0.00306 seconds (files took 0.60099 seconds to load)
5 examples, 1 failure

Failed examples:

rspec ./spec/five_s_sample_spec.rb:165 # FiveS_sample method05 |case_no=1|case_title=うんこ
```
_spec/five_s_sample_spec.rb_`method05`のテストケースを削除
```bash
context :method05 do
  cases = [
    {
      case_no: 1,
      case_title: "うんこ",
      expected: "うんこ",
    },
  ]
・・・
end
```
テストケース整理後
```bash
 rspec
....

Finished in 0.00218 seconds (files took 0.12787 seconds to load)
4 examples, 0 failures
```
## <a name="3">整頓</a>
## <a name="4">清掃</a>
## <a name="5">清潔</a>
## <a name="6">躾</a>

# 参照

+ [Ruby | Guard gem を利用してファイルの変更を検出し、任意のタスクを自動実行する](http://qiita.com/tbpgr/items/f5be21d8e19dd852d9b7)
+ [RSpecPiccolo](https://github.com/tbpgr/rspec_piccolo)
