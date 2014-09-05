# encoding: utf-8
require "spec_helper"
require "five_s_sample"

describe FiveS_sample do

  context :method01 do
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
          actual = five_s_sample.method01

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

  context :method02 do
    cases = [
      {
        case_no: 1,
        case_title: "1を聞いて10を返す",
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
          actual = five_s_sample.method02("1")

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

  context :method03 do
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
          actual = five_s_sample.method03

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

  context :method04 do
    cases = [
      {
        case_no: 1,
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
          actual = five_s_sample.method04("9")

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

  context :method05 do
    cases = [
      {
        case_no: 1,
        case_title: "うんこ",
        expected: "うんこ",
      },
    ]

    cases.each do |c|
      it "|case_no=#{c[:case_no]}|case_title=#{c[:case_title]}" do
        begin
          case_before c

          # -- given --
          five_s_sample = FiveS_sample.new

          # -- when --
          actual = five_s_sample.method05

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
