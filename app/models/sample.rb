class Sample < ApplicationRecord
  mount_uploader :instruction, InstructionUploader
  mount_uploader :submission, SubmissionUploader

  validates :instruction, presence: true
  validates :submission, presence: true
  validates :language, presence: true
  validates :theme, presence: true
  validates :level, presence: true
  validates :score, presence: true
  validates :mode, presence: true
  validates :comment, presence: true

  validates_size_of :instruction, maximum: 5.megabytes, message: "Should be less than 5MB"
  validates_size_of :submission, maximum: 5.megabytes, message: "Should be less than 5MB"

end
