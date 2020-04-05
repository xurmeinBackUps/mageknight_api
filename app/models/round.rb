# frozen_string_literal: true

# models first sub-set of play sequencing (rounds)
class Round < ApplicationRecord
  belongs_to :game_sessions
  has_many :turns
end
