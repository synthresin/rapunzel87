# encoding: utf-8
require 'bcrypt'

class User < ActiveRecord::Base
  attr_accessor :password, :password_confirmation
  attr_accessible :email, :password, :password_confirmation, :name, :nickname

  has_many :microposts

  before_save :encrypt_password
  
  include BCrypt

  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  
  validates :password, :presence => {:message => '비밀번호를 입력해주세요.'},
                       :confirmation => {:message => '동일한 비밀번호를 두번 입력해주세요.'},
                       :on => :create

  validates :password_confirmation, :presence => true,
                                    :on => :create

  validates :email, :format => { :with => email_regex, :message => '잘못된 이메일 형식입니다.' }, 
  			:presence => {:message => '이메일 주소를 입력해주세요.'}, 
  			:uniqueness => true
  
  # end
  def admin?
    self.admin
  end


  def has_password?(submitted_password)
    Password.new(self.encrypted_password) ==  submitted_password
  end

  def self.authenticate(email, submitted_password)
    user = find_by_email(email)
    return nil if user.nil?
    return user if user.has_password?(submitted_password)
  end

private
  def encrypt_password
    self.encrypted_password = Password.create(password) if password != nil && password_confirmation != nil
  end

  


end
