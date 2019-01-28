require 'rails_helper'

RSpec.describe Fan, type: :model do
  describe ".new" do
    subject { Fan.new(attr).save }

    context "18歳未満のとき" do
      let(:attr) do
        {
          first_name: "alice",
          last_name: "bob",
          age: 17,
          birthday: Date.today - 17.years
        }
      end

      it "登録できないこと" do
        is_expected.to be false
      end
    end

    context "18歳以上のとき" do
      let(:attr) do
        {
          first_name: "charlie",
          last_name: "bob",
          age: 18,
          birthday: Date.today - 18.years
        }
      end

      it "登録成功すること" do
        is_expected.to be true
      end
    end
  end
end
