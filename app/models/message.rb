class Message < ApplicationRecord
    validates :body, presence: true, length: {maximum: 300}
    belongs_to :user
    scope :limited_messages, -> { order(:created_at).last(20) }
end