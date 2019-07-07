class Language < ApplicationRecord
    has_many :codes, dependent: :destroy
end
