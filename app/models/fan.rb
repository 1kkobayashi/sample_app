class Fan < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :age, presence: true,
    numericality: { only_integer: true },
    allow_nil: false

  enum gender: { male: 0, female: 1 }

  # NOTE: 誕生日と年齢が確からしいかvalidateメソッドを作って確認してみよう
  validate :age_equal_to_birthday

  def age_equal_to_birthday
    if (Date.today.strftime('%Y%m%d').to_i - birthday.strftime('%Y%m%d').to_i)/10000.floor == age
      return nil
    else
      errors.add(:birthday, "incorrect with age")
    end
  end
  # NOTE: fanのフルネームを`fan.full_name`で取得できるようにしてみよう
  def full_name
    first_name + " " + last_name
  end
end
