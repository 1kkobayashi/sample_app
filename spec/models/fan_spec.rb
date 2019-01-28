require 'rails_helper'

RSpec.describe Fan, type: :model do
  describe ".new" do
    subject do
      Fan.create(attr)
    end

    context "18歳以下のとき" do
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
        expect { subject }.not_to change(Fan, :count)
      end
    end

    context "18歳以上のとき" do
      let(:attr) do
        {
          first_name: "alice",
          last_name: "bob",
          age: 18,
          birthday: Date.today - 18.years
        }
      end

      it "登録成功すること" do
        is_expected.to be true
        expect { subject }.to change(Fan, :count).by(1)
      end
    end
  end
end
