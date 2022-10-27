class Task < ApplicationRecord
  belongs_to :list

  validates :title, presence: true

  # So consegui usar o callback sem a validação (?)
  before_validation :set_default_checked, unless: :is_checked?

  private

  def set_default_checked
    self.checked = false
  end

  def is_checked?
    self.checked == true
  end

end
