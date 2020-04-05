# frozen_string_literal: true

# models final sub-set of game sequencing (turns)
class Turn < ApplicationRecord
	belongs_to :rounds
end
