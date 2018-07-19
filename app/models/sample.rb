class Sample < ApplicationRecord
  mount_uploader :instruction, InstructionUploader
  mount_uploader :submission, SubmissionUploader
end
