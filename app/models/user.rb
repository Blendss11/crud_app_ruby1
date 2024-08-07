# app/models/user.rb
class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # Enum untuk role
  enum role: { user: 'user', admin: 'admin', guru: 'guru' }

  # Validasi peran pengguna
  validates :role, presence: true, inclusion: { in: roles.keys }

  # Tetapkan nilai default untuk kolom role
  after_initialize :set_default_role, if: :new_record?

  def set_default_role
    self.role ||= 'user'
  end

  # Metode untuk memeriksa apakah pengguna adalah admin
  def admin?
    role == 'admin'
  end

  # Metode untuk memeriksa apakah pengguna adalah guru
  def guru?
    role == 'guru'
  end
end
