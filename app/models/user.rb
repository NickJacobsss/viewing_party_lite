# frozen_string_literal: true

class User < ApplicationRecord
  has_many :user_parties
  has_many :parties, through: :user_parties
  validates_presence_of :name
  validates_uniqueness_of :email
  has_secure_password
end
