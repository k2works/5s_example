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
