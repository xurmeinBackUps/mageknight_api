# frozen_string_literal: true

# parent model for ordering play sequence
class GameSession < ApplicationRecord
  has_many :rounds
end
