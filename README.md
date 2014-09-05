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
+ [おまけ](#7)

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
_lib/five_s_sample.rb_整頓前
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
_lib/five_s_sample.rb_整頓後
```ruby
# encoding: utf-8

class FiveS_sample

#  def method01
#    "10"
#  end

#  def method02(arg)
#    "10"
#  end

#  def method03
#    "1"
#  end

#  def method04(arg)
#    "10"
#  end

  def return_ten
    "10"
  end

  def return_ten_with_arg(arg)
    "10"
  end

  def return_one
    "1"
  end
end
```
テストケース整頓前
```bash
$ rspec
/Users/k2works/projects/github/5s_example/lib/five_s_sample.rb:8: warning: method redefined; discarding old return_ten
/Users/k2works/projects/github/5s_example/lib/five_s_sample.rb:4: warning: previous definition of return_ten was here
FFFF

Failures:

  1) FiveS_sample method01 |case_no=1|case_title=10を返す
     Failure/Error: actual = five_s_sample.method01
     NoMethodError:
       undefined method `method01' for #<FiveS_sample:0x0000010261ab40>
     # ./spec/five_s_sample_spec.rb:25:in `block (4 levels) in <top (required)>'

  2) FiveS_sample method02 |case_no=1|case_title=1を聞いて10を返す
     Failure/Error: actual = five_s_sample.method02("1")
     NoMethodError:
       undefined method `method02' for #<FiveS_sample:0x000001026191a0>
     # ./spec/five_s_sample_spec.rb:62:in `block (4 levels) in <top (required)>'

  3) FiveS_sample method03 |case_no=1|case_title=1を返す
     Failure/Error: actual = five_s_sample.method03
     NoMethodError:
       undefined method `method03' for #<FiveS_sample:0x00000102613868>
     # ./spec/five_s_sample_spec.rb:99:in `block (4 levels) in <top (required)>'

  4) FiveS_sample method04 |case_no=1|case_title=9を聞いて10を返す
     Failure/Error: actual = five_s_sample.method04("9")
     NoMethodError:
       undefined method `method04' for #<FiveS_sample:0x00000102610f00>
     # ./spec/five_s_sample_spec.rb:136:in `block (4 levels) in <top (required)>'

Finished in 0.00268 seconds (files took 0.10725 seconds to load)
4 examples, 4 failures

Failed examples:

rspec ./spec/five_s_sample_spec.rb:17 # FiveS_sample method01 |case_no=1|case_title=10を返す
rspec ./spec/five_s_sample_spec.rb:54 # FiveS_sample method02 |case_no=1|case_title=1を聞いて10を返す
rspec ./spec/five_s_sample_spec.rb:91 # FiveS_sample method03 |case_no=1|case_title=1を返す
rspec ./spec/five_s_sample_spec.rb:128 # FiveS_sample method04 |case_no=1|case_title=9を聞いて10を返す
```
_spec/five_s_sample_spec.rb_のテストケースを整頓
```ruby
# encoding: utf-8
require "spec_helper"
require "five_s_sample"

describe FiveS_sample do

  context :return_ten do
    cases = [
      {
        case_no: 1,
        case_title: "10を返す",
        expected: "10",
      },
    ]

    cases.each do |c|
      it "|case_no=#{c[:case_no]}|case_title=#{c[:case_title]}" do
        begin
          case_before c

          # -- given --
          five_s_sample = FiveS_sample.new

          # -- when --
          actual = five_s_sample.return_ten

          # -- then --
          expect(actual).to eq(c[:expected])
        ensure
          case_after c
        end
      end

      def case_before(c)
        # implement each case before
      end

      def case_after(c)
        # implement each case after
      end
    end
  end

  context :return_ten_with_arg do
    cases = [
      {
        case_no: 1,
        ask: "1",
        case_title: "1を聞いて10を返す",
        expected: "10",
      },
      {
        case_no: 2,
        ask:"9",
        case_title: "9を聞いて10を返す",
        expected: "10",
      },
    ]

    cases.each do |c|
      it "|case_no=#{c[:case_no]}|case_title=#{c[:case_title]}" do
        begin
          case_before c

          # -- given --
          five_s_sample = FiveS_sample.new

          # -- when --
          actual = five_s_sample.return_ten_with_arg(c[:ask])

          # -- then --
          expect(actual).to eq(c[:expected])
        ensure
          case_after c
        end
      end

      def case_before(c)
        # implement each case before
      end

      def case_after(c)
        # implement each case after
      end
    end
  end

  context :return_one do
    cases = [
      {
        case_no: 1,
        case_title: "1を返す",
        expected: "1",
      },
    ]

    cases.each do |c|
      it "|case_no=#{c[:case_no]}|case_title=#{c[:case_title]}" do
        begin
          case_before c

          # -- given --
          five_s_sample = FiveS_sample.new

          # -- when --
          actual = five_s_sample.return_one

          # -- then --
          expect(actual).to eq(c[:expected])
        ensure
          case_after c
        end
      end

      def case_before(c)
        # implement each case before
      end

      def case_after(c)
        # implement each case after
      end
    end
  end
end
```
テストケース整頓後
```bash
$ rspec
/Users/k2works/projects/github/5s_example/spec/five_s_sample_spec.rb:78: warning: method redefined; discarding old case_before
/Users/k2works/projects/github/5s_example/spec/five_s_sample_spec.rb:78: warning: previous definition of case_before was here
/Users/k2works/projects/github/5s_example/spec/five_s_sample_spec.rb:82: warning: method redefined; discarding old case_after
/Users/k2works/projects/github/5s_example/spec/five_s_sample_spec.rb:82: warning: previous definition of case_after was here
....

Finished in 0.00172 seconds (files took 0.10122 seconds to load)
4 examples, 0 failures
```
## <a name="4">清掃</a>
清掃前
```ruby
# encoding: utf-8

class FiveS_sample

#  def method01
#    "10"
#  end

#  def method02(arg)
#    "10"
#  end

#  def method03
#    "1"
#  end

#  def method04(arg)
#    "10"
#  end

  def return_ten
    "10"
  end

  def return_ten_with_arg(arg)
    "10"
  end

  def return_one
    "1"
  end
end
```
清掃後
```ruby
# encoding: utf-8

class FiveS_sample

  def return_ten
    "10"
  end

  def return_ten_with_arg(arg)
    "10"
  end

  def return_one
    "1"
  end
end
```
## <a name="5">清潔</a>
コードがクリーンな状態を維持する
```bash
$ rspec
/Users/k2works/projects/github/5s_example/spec/five_s_sample_spec.rb:78: warning: method redefined; discarding old case_before
/Users/k2works/projects/github/5s_example/spec/five_s_sample_spec.rb:78: warning: previous definition of case_before was here
/Users/k2works/projects/github/5s_example/spec/five_s_sample_spec.rb:82: warning: method redefined; discarding old case_after
/Users/k2works/projects/github/5s_example/spec/five_s_sample_spec.rb:82: warning: previous definition of case_after was here
....

Finished in 0.0016 seconds (files took 0.09781 seconds to load)
4 examples, 0 failures
```
## <a name="6">躾</a>
プログラムの変更・修正が発生したら毎回整理・整頓・清掃・清潔を実施する

## <a name="7">おまけ</a>
以下の操作実施すると_chef/sample/5s_example_以下にサンプルファイルがチェックアウトされて色々いじれます
```
$ cd chef/sample/
$ vagrant up
$ vagrant ssh
$ cd /vagrant
$ git clone https://github.com/k2works/5s_example.git
$ cd 5s_example
$ bundle install
```

# 参照

+ [Ruby | Guard gem を利用してファイルの変更を検出し、任意のタスクを自動実行する](http://qiita.com/tbpgr/items/f5be21d8e19dd852d9b7)
+ [RSpecPiccolo](https://github.com/tbpgr/rspec_piccolo)
+ [chef-rvm](https://github.com/fnichol/chef-rvm)
