# encoding: utf-8
class User < ActiveRecord::Base
  has_many :orders
   attr_accessor :pwd_confirmation

   validates_presence_of :phone, :message => "手机号码不能为空"
   validates_presence_of :pwd, :message => "密码不能为空"
   validates_presence_of :address,  :message => "地址不能为空"
   #validates_numericality_of :phone,:message => "23"
   validates_format_of :phone, :with => /^(1(([35][0-9])|(47)|[8][0126789]))\d{8}$/,  :message => "手机号码格式不正确"
   #validates_presence_of :email,:message => "sdf"
   validates_uniqueness_of :phone,:message => "该手机号已被注册"


   #validates_confirmation_of :pwd,:message => "两次密码不一致"

end
