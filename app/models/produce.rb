class Produce < ApplicationRecord
    validates :legacy_code, format: { without: /\A[a-zA-Z]+\z/,
    message: "only allows letters" }
end
