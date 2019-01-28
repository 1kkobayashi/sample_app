class Fan < ApplicationRecord
  validate :first_name, presence: true
  validate :last_name, presence: true
  validate :age, presence: true, numericality: { only_integer: true }

  validate :over18?

  def over18?
    (age - 18) >= 0
  end

  # NOTE: 誕生日と年齢が確からしいかvalidateメソッドを作って確認してみよう

  # NOTE: fanのフルネームを`fan.full_name`で取得できるようにしてみよう
end
