# encoding: utf-8
class User < ActiveRecord::Base
  validates_presence_of :phone, :on => :create, :message => "s是"
   validates_presence_of :address,  :message => "e"
   validates_numericality_of :phone,:message => "23"
   validates_format_of :phone, :with => /^(1(([35][0-9])|(47)|[8][0126789]))\d{8}$/,  :message => "sdf"
   
end
