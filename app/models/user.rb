class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # before_save {self.email = email.downcase}

  # VALID_EMAIL_REGEX= /^(|(([A-Za-z0-9]+_+)|([A-Za-z0-9]+\-+)|([A-Za-z0-9]+\.+)|([A-Za-z0-9]+\++))*[A-Za-z0-9]+@((\w+\-+)|(\w+\.))*\w{1,63}\.[a-zA-Z]{2,6})$/i
  has_many :tasks
  # validates :name , presence: true , length: {minimum: 3, maximum:30}
  # validates :email , presence: true , uniqueness:{case_sensetive:false},format:{with:VALID_EMAIL_REGEX,multiline:true}
  # validates :password, presence: true , length: {minimum: 5} 
end
